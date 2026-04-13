# Variables
CONFIG = config/build.yaml
OUTPUT = dist/informe-final.pdf

# Comando por defecto
all: pdf

# Regla para compilar el PDF
pdf:
	@echo "Compilando documento con Pandoc..."
	pandoc --defaults=$(CONFIG)
	@echo "Build exitoso. Archivo generado en: $(OUTPUT)"

# Regla para limpiar la carpeta dist
clean:
	powershell -Command "Remove-Item -Path 'dist/*' -Recurse -Force"
