# Minerva ROM (Spanish Edition / Edición en Español)

This is a fork of the original **Minerva** repository by [Marcel Kilgus](https://github.com/MarcelKilgus/Minerva), specifically configured to compile the **Spanish (SP) version** of the Sinclair QL operating system.

## ROM version 1.98
---

## 🇬🇧 English Description

Minerva is widely considered the most advanced and stable replacement operating system for the Sinclair QL. This fork includes the necessary source code adjustments to generate a ROM with all system messages, commands, and errors translated into Spanish (Minerva SP).

### Features
* **Full Localization:** Boot messages, network errors, and console commands in Spanish.
* **Performance:** Maintains all speed improvements and bug fixes from the original Minerva code.
* **Open Source:** Built using the official source code maintained by Marcel Kilgus.

### Compilation
The build process follows the same logic as the original repository but points to the Spanish language headers. Ensure you have the QL development toolchain (such as the `QMAC` assembler) installed.

### Credits
* **Original Author:** Marcel Kilgus (based on work by Stuart Honeyball/Qview).
* **Spanish version:** Jose Daniel Fernandez.

---

## 🇪🇸 Descripción en Español

Este repositorio es un fork del proyecto original de **Marcel Kilgus**, adaptado y localizado para la comunidad de habla hispana del Sinclair QL.

### Características
* **Traducción Completa:** Mensajes de inicio, errores de red y comandos de consola totalmente en castellano.
* **Rendimiento:** Mantiene todas las mejoras de velocidad y corrección de errores del Minerva original.
* **Basado en el código oficial:** Sincronizado con el código fuente mantenido por Marcel Kilgus.

### Compilación
El proceso de ensamblado sigue la misma lógica que el repositorio original pero configurado para los archivos de cabecera en español. Se requiere el uso del ensamblador `QMAC` o herramientas compatibles con el entorno de desarrollo del QL.

### Créditos
* **Autor Original:** Marcel Kilgus (basado en el trabajo de Stuart Honeyball/Qview).
* **Version española:** Jose Daniel Fernandez.

---
## 🛠️ How to Compile / Cómo Compilar

I have included a helper script called `MIMAKE.BAS` to automate the build process using **QPC2**.

### Prerequisites / Requisitos
1. **QPC2 Emulator** configured.
2. The source code directory linked to `DOS1_`.
3. A system disk (like `QPC1.WIN`) in `WIN1_` containing the development tools (Outptr, Make, etc.) in the `extras` folder.

### Step-by-step / Paso a paso
1. Open **QPC2**.
2. Point your `DOS1_` device to the folder where you cloned this repository.
3. Run the compilation script by typing: 
   `LRUN DOS1_M_MIMAKE_BAS` (or the corresponding path).
4. The script will:
   - Configure the environment.
   - Call the `Make` tool to link the ROM.
   - Allocate memory and save the final 48K image as **`Minerva198SP_rom`**.

### Build Script (`MIMAKE.BAS`)
The core logic for compiling is:
```basic
10 REM Compila
20 DEV_USE 7, 'dos1_'
30 LRESPR 'win2_extras_source_outptr_bin'
40 PROG_USE 'win2_extras_exe'
50 EX 'win2_extras_exe_Make'; 'dev7_M_ROM_link -l'
60 PRINT "COMPILADO, EMPAQUETANDO"
...
130 SBYTES 'dev7_M_Minerva198SP_rom', adr, 48 * 1024
---
## License / Licencia
This project is distributed under the same license terms as the original Minerva source code. / Este proyecto se distribuye bajo los mismos términos de licencia que el código fuente original de Minerva.
