import subprocess
import sys

def encrypt_file():
    try:
        source = input("Enter the file to encrypt: ").strip()
        destination = input("Enter the encrypted destination path (rclone remote:path): ").strip()
        
        if not source or not destination:
            print("Error: Source and destination must be provided.")
            return

        if source == destination:
            print("Error: Source and destination cannot be the same.")
            return

        subprocess.run(["rclone", "copy", source, destination], check=True)
        print("File encrypted and uploaded successfully!")

    except subprocess.CalledProcessError as e:
        print(f"Error during encryption: {e.stderr if e.stderr else str(e)}")
    except KeyboardInterrupt:
        print("\nOperation interrupted by user. Exiting...")
        sys.exit(1)

def decrypt_file():
    try:
        source = input("Enter the encrypted source path (rclone remote:path): ").strip()
        destination = input("Enter the destination folder to decrypt to: ").strip()
        
        if not source or not destination:
            print("Error: Source and destination must be provided.")
            return

        if source == destination:
            print("Error: Source and destination cannot be the same.")
            return

        subprocess.run(["rclone", "copy", source, destination], check=True)
        print("File decrypted successfully!")

    except subprocess.CalledProcessError as e:
        print(f"Error during decryption: {e.stderr if e.stderr else str(e)}")
    except KeyboardInterrupt:
        print("\nOperation interrupted by user. Exiting...")
        sys.exit(1)

def main():
    try:
        while True:
            choice = input("Do you want to (e)ncrypt, (d)ecrypt a file, or (q)uit? ").strip().lower()
            if choice == 'e':
                encrypt_file()
            elif choice == 'd':
                decrypt_file()
            elif choice == 'q':
                print("Exiting program.")
                sys.exit(0)
            else:
                print("Invalid choice. Please enter 'e', 'd', or 'q'.")
    except KeyboardInterrupt:
        print("\n\nExiting program due to user interruption.")
        sys.exit(1)

if __name__ == "__main__":
    main()