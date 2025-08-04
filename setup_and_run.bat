@echo off
echo ========================================
echo Flutter Intern Dashboard Setup Script
echo ========================================
echo.

REM Check if Flutter is in PATH
flutter --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Flutter found in PATH!
    goto :run_flutter
)

REM Check for Flutter in Downloads folder
set FLUTTER_PATH=C:\Users\Thota Sukanya\Downloads\flutter_windows_3.32.8-stable\flutter\bin
if exist "%FLUTTER_PATH%\flutter.bat" (
    echo Flutter found in Downloads folder!
    echo Adding Flutter to PATH for this session...
    set PATH=%FLUTTER_PATH%;%PATH%
    goto :run_flutter
)

REM Flutter not found
echo ERROR: Flutter not found!
echo.
echo Please install Flutter from: https://flutter.dev/docs/get-started/install/windows
echo.
echo Or if you have Flutter installed, make sure it's in your PATH.
echo.
pause
exit /b 1

:run_flutter
echo.
echo Checking Flutter installation...
flutter doctor

echo.
echo Installing dependencies...
flutter pub get

echo.
echo ========================================
echo Setup complete! 
echo ========================================
echo.
echo To run the app:
echo   flutter run
echo.
echo To run on specific platform:
echo   flutter run -d chrome    (Web)
echo   flutter run -d android   (Android)
echo   flutter run -d ios       (iOS - macOS only)
echo.
echo To build for production:
echo   flutter build apk --release        (Android APK)
echo   flutter build appbundle --release  (Android App Bundle)
echo   flutter build web --release        (Web)
echo.
pause