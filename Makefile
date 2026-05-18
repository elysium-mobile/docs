# Variables
CONFIG_PDF = config/build.yaml
CONFIG_WORD = config/build-word.yaml
OUTPUT_PDF = dist/informe-final.pdf
OUTPUT_WORD = dist/informe-final.docx
PYTHON = $(if $(wildcard .venv/Scripts/python.exe),.venv/Scripts/python.exe,python)

# Comando por defecto
all: pdf word

# Regla para compilar ambos formatos
release: pdf word

# Nueva regla para automatizar la optimización por lotes
optimize:
	@echo "Ejecutando optimización automatizada de imágenes..."
	$(PYTHON) optimize_images.py

# Regla para compilar el PDF
pdf:
	@powershell -Command "New-Item -ItemType Directory -Force -Path 'dist' | Out-Null"
	@echo "Compilando documento con Pandoc..."
	pandoc --defaults=$(CONFIG_PDF)
	@echo "Build exitoso. Archivo generado en: $(OUTPUT_PDF)"

# Regla para compilar el Word
word:
	@powershell -Command "New-Item -ItemType Directory -Force -Path 'dist' | Out-Null"
	@echo "Compilando documento Word con Pandoc..."
	pandoc --defaults=$(CONFIG_WORD)
	@echo "Build exitoso. Archivo generado en: $(OUTPUT_WORD)"

clean:
	powershell -Command "Remove-Item -Path 'dist/*' -Recurse -Force"
