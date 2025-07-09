build:
	@echo "Building the project..."
	@echo "Compiling source files..."
	@echo "Linking object files..."
	@echo "Build complete."
	export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
	swift build
clean:
	@echo "Cleaning up build artifacts..."