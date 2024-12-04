import os
import subprocess
from termcolor import colored

# Function to check if a package is installed
def is_installed(package_name):
    try:
        subprocess.check_output(['pkg', 'show', package_name])
        return True
    except subprocess.CalledProcessError:
        return False

# Function to install required packages
def install_required_packages(package_list):
    for package in package_list:
        if not is_installed(package):
            os.system(f'pkg install {package} -y')

# ASCII Art
def display_ascii_art():
    ascii_art = """
        ██████╗  ██████╗ ██████╗     ███████╗██╗   ██╗ █████╗ ██╗     ██╗     
        ██╔══██╗██╔═══██╗██╔══██╗    ██╔════╝╚██╗ ██╔╝██╔══██╗██║     ██║     
        ██████╔╝██║   ██║██████╔╝    █████╗   ╚████╔╝ ███████║██║     ██║     
        ██╔═══╝ ██║   ██║██╔═══╝     ██╔══╝    ╚██╔╝  ██╔══██║██║     ██║     
        ██║     ╚██████╔╝██║         ███████╗   ██║   ██║  ██║███████╗███████╗
        ╚═╝      ╚═════╝ ╚═╝         ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
    """
    print(colored(ascii_art, 'blue'))
    print(colored("CODED BY POP-SMOKE", 'blue'))

# Main function
def termux_stayler():
    payload_url = 'https://example.com/terdxtstayler.zip'  # Replace with the actual URL
    target_directory = os.path.join(os.path.expanduser('~'), 'TerdxStayler')

    if not os.path.exists(target_directory):
        os.makedirs(target_directory)

    print(colored(f"[+] Downloading payload to {target_directory}...", 'blue'))
    os.system(f'curl -o {os.path.join(target_directory, "terdxtstayler.zip")} {payload_url}')

    print(colored(f"[+] Extracting payload...", 'blue'))
    os.system(f'unzip {os.path.join(target_directory, "terdxtstayler.zip")} -d {target_directory}')

    print(colored(f"[+] Setup completed!", 'blue'))

# Execution
if __name__ == "__main__":
    required_packages = ['curl', 'unzip']
    install_required_packages(required_packages)
    display_ascii_art()
    termux_stayler()
