# FortiDragon Lab — Guia do Aluno

Este guia mostra como **subir e usar o FortiDragon Lab em casa**, passo a passo.

---

## Pré-requisitos

- Docker
- Docker Compose v2
- Git

---

## Clonando o Repositório

```bash
git clone https://github.com/MKOVALSKIM/fortiDragon-lab.git
cd fortiDragon-lab
```

---

## Subindo o Laboratório

```bash
docker compose up -d
```

Linux pode exigir:

```bash
sudo docker compose up -d
```

---

## Acessando o Grafana

- URL: http://localhost:3000
- Usuário: admin
- Senha: admin

---

## Gerando Logs Sintéticos

```bash
chmod +x scripts/generate_sample_logs.sh
./scripts/generate_sample_logs.sh
```

---

## Validando o Pipeline

### Vector
```bash
docker compose logs -f vector
```

### VictoriaLogs
```bash
curl http://localhost:9428/health
```

---

## Encerrando o Lab

```bash
docker compose down
```

Remover dados:

```bash
docker compose down -v
```

---

## Atualizando o Lab

```bash
git pull origin main
docker compose down
docker compose up -d
```

---

## Objetivos de Aprendizado

- Arquitetura SOC
- Pipeline de logs
- Observabilidade aplicada à segurança
