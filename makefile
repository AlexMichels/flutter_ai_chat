help:
	@echo "available commands"
	@echo " - clean      : runs flutter clean, pub get and the build runner"


clean:
	@echo "Running flutter clean, pub get and the build runner"
	flutter clean 
	flutter pub get
	dart run build_runner build -d
	format


format:
	dart format . --line-length 100