# Variables
CONFIG_PDF = config/build.yaml
CONFIG_WORD = config/build-word.yaml
OUTPUT_PDF = dist/informe-final.pdf
OUTPUT_WORD = dist/informe-final.docx

# Comando por defecto
all: pdf word

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

# Regla para limpiar la carpeta dist
clean:
	powershell -Command "Remove-Item -Path 'dist/*' -Recurse -Force"
