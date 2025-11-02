# Configurações Davyusow

## Índice

1. [Sistemas Operacionais](#1-sistemas-operacionais)
2. [Instalação](#2-instalação)
   - [2.1 Arch Linux](#21-arch-linux)
   - [2.2 Windows](#22-windows)
3. [Pós-Instalação](#3-pós-instalação)
   - [3.1 Arch Linux](#31-arch-linux)
   - [3.2 Windows](#32-windows)
5. [Terminal](#5-terminal)
6. [Programas](#6-programas)

---

## 1. Sistemas Operacionais

Tenho preferência por sistemas Linux, atualmente usando **Arch Linux**. Já utilizei e não teria problemas em usar:

- **Debian**
- **Zorin OS**
- **openSUSE**

Além dos sistemas Linux, usei bastante o **Windows 10** e por um tempo o **Windows 11**, porém sinto que preciso fazer mais ajustes para usar como desejo e mesmo assim minha máquina não atinge o desempenho satisfatório, apesar de ser totalmente funcional.

---

## 2. Instalação

### 2.1 Arch Linux

Como meu sistema atual é o Arch, utilizo o script `archinstall` por conveniência. Configurações básicas utilizadas:

| Configuração      | Valor                       |
| ----------------- | --------------------------- |
| Layout de teclado | `pt-BR-abnt2`               |
| Idioma            | `pt-BR`                     |
| Repositórios      | `extra`, `multilib`, `base` |
| Suporte a Flatpak |  Habilitado               |
| Kernels           | `linux` & `linux-lts`       |
| Ambiente gráfico  | GNOME                       |

### 2.2 Windows

Na instalação do Windows, realizo configurações básicas:

- Desativar todas as telemetrias
- Desativar serviços adicionais desnecessários

---

## 3. Pós-Instalação

### 3.1 Arch Linux

#### Atualização do Sistema

```bash
sudo pacman -Syu
```

> **Nota:** Mantenho uma rotina de atualizações semanais todo fim de semana.

#### Configurações do GNOME Control Center

| Seção           | Configuração           | Valor                                   |
| --------------- | ---------------------- | --------------------------------------- |
| **Tela**        | Resolução              | 1920×1080p                              |
|                 | Escala                 | 100%                                    |
|                 | Luz Noturna            | 18:00 - 06:00 <br> Temperatura: 2 |
| **Multitarefa** | Canto Ativo            | Desativado                           |
| **Aparência**   | Cor de Realce          | Verde ou Laranja                  |
| **Teclado**     | Alternar Tela Inteira  | `Alt + Enter`                           |
|                 | Ativar Menu da Janela  | Desativado                           |
|                 | Pasta Pessoal          | `Super + E`                             |
|                 | Ocultar Janelas        | `Super + D`                             |
|                 | Mostrar Notificações   | Desativado                           |
|                 | Terminal Personalizado | `Ctrl + Alt + T` → `kgx`                |

#### Instalação do GNOME Tweaks

```bash
sudo pacman -S gnome-tweaks
```

#### Configurações do GNOME Tweaks

- **Janelas**
  - Botão de maximizar
  - Botão de minimizar
  - Centralizar novas janelas
  - Tecla de ação de janela: `Super`

### 3.2 Windows

#### Configurações do Sistema

- **Tema:** Escuro
- **Barra de Tarefas:**
  - Widgets desativados
  - Pesquisa desativada
  - Alinhamento à esquerda
- **Área de Trabalho:**
  - Ícones ocultos
- **Display:**
  - Resolução: 1920×1080p
  - Escala: 100%

---

## 4. Terminal


## 5. Programas


---
