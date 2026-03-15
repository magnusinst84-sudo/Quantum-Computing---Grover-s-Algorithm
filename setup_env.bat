@echo off
echo Setting up Python Virtual Environment...

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Python is not installed or not added to PATH. Please install Python 3.8+ and try again.
    pause
    exit /b 1
)

:: Create virtual environment
echo Creating virtual environment "venv"...
python -m venv venv

:: Activate virtual environment and install requirements
echo Activating venv and installing requirements...
call venv\Scripts\activate.bat
python -m pip install --upgrade pip
pip install -r requirements.txt

echo.
echo =======================================================
echo Setup complete! To start Jupyter Notebook, run:
echo.
echo     venv\Scripts\activate
echo     jupyter notebook
echo =======================================================
pause
