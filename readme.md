# Fortinet Observability Lab  
**Vector + VictoriaLogs + Grafana (Docker All-in-One)**

Este repositório contém um **laboratório completo de observabilidade de logs Fortinet**, totalmente containerizado, projetado para **aulas, estudos práticos, demonstrações e provas de conceito**.

O objetivo do lab é ensinar **arquitetura moderna de ingestão, processamento, armazenamento e visualização de logs de firewall**, com foco em **SOC, observabilidade e segurança**.

---

## Visão Geral da Arquitetura

```
FortiGate (Syslog)
        ↓
     Vector
(Ingestão e Parse)
        ↓
  VictoriaLogs
 (Armazenamento)
        ↓
     Grafana
 (Visualização)
```

---

## Componentes do Lab

### Vector
- Recepção de logs Syslog TCP/UDP (porta 514)
- Parsing de logs Fortinet no formato key=value
- Normalização e classificação de eventos
- Envio de logs estruturados em JSON para o VictoriaLogs

### VictoriaLogs
- Armazenamento de logs de alta performance
- Alta compressão
- Baixa latência
- Retenção configurável

### Grafana
- Datasource provisionado automaticamente
- Plugin VictoriaLogs pré-instalado
- Dashboards carregados via arquivo
- Interface única de visualização

---

## Estrutura do Projeto

```
fortinet-observability-lab/
├── docker-compose.yml
├── vector/
│   └── vector.toml
├── victorialogs/
│   └── data/
├── grafana/
│   └── provisioning/
│       ├── datasources/
│       │   └── victorialogs.yaml
│       └── dashboards/
│           ├── dashboards.yaml
│           └── fortinet/
├── scripts/
│   └── generate_sample_logs.sh
└── README.md
```

---

## Pré-requisitos

- Docker
- Docker Compose
- Git (opcional)

---

## Subindo o Lab

```bash
docker compose up -d
```

---

## Acesso ao Grafana

- URL: http://localhost:3000
- Usuário: admin
- Senha: admin

---

## Envio de Logs Fortinet Reais

Configure no FortiGate:
- Syslog Server: IP do host
- Porta: 514
- Protocolo: UDP ou TCP

---

## Logs Sintéticos

Para ambientes sem FortiGate:

```bash
chmod +x scripts/generate_sample_logs.sh
./scripts/generate_sample_logs.sh
```

---

## Conceitos Ensinados

- Pipelines de logs
- Observabilidade aplicada à segurança
- Parsing e normalização
- Arquitetura de SOC
- Infraestrutura reprodutível

---

## Boas Práticas

- Provisionamento automático
- Dashboards versionados
- Ambiente idêntico para alunos
- Infraestrutura como código

---

## Filosofia

Este lab ensina arquitetura, não cliques.
