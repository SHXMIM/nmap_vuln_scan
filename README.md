# 🛠 ReconXplorer

**ReconXplorer** is a comprehensive **network scanning tool** designed for reconnaissance and vulnerability detection. Built on **bash**, this tool utilizes powerful utilities like **Nmap** and **arp-scan** to deliver detailed network insights. Whether you need basic scans or advanced aggressive scanning, ReconXplorer has you covered.

---

## 🌐 What is Network Scanning?

**Network Scanning** is a critical step in cybersecurity and network management. It helps identify live hosts, open ports, operating systems, and services running on a network. ReconXplorer simplifies this process with an intuitive, menu-driven interface for various scan types.

---

## 🚀 Features

- **Interactive Interface**: User-friendly menu for easy navigation.
- **Comprehensive Scanning Options**:
  - ARP Scanning
  - Basic Nmap Scans
  - Connect and Stealth Scans
  - OS and Service Detection
  - Aggressive Scans
- **Output Saving**: Option to save scan results with custom filenames.
- **Customizable**: Easily extend the tool for additional scanning features.

---

## 📥 Installation

### Prerequisites:
Ensure **Nmap** and **arp-scan** are installed:

```bash
sudo apt update
sudo apt install nmap arp-scan 
```
### Clone the repository
```
git clone https://github.com/SHXMIM/ReconXplorer.git
```
### Navigate to the directory
```
cd ReconXplorer
```
### Make the script executable
```
chmod +x ReconXplorer.sh
```
### Execute the script
```
./ReconXplorer.sh
```
---

## Usage Instructions

### Select a Scan Type

Once the tool launches, you will be presented with the following menu options:

- **1:** ARP-scan  
- **2:** Basic Nmap scan  
- **3:** Connect scan  
- **4:** Stealth scan  
- **5:** ACK scan  
- **6:** OS scan  
- **7:** Service and version scan  
- **8:** Aggressive scan  
- **q:** Exit the tool

---

## Example Use Case: Aggressive Scan

1. Run `./ReconXplorer.sh`.
2. Select option **8** (Aggressive Scan).
3. Enter the target IP when prompted.
4. View the results on-screen or save them to a file.

---

## ⚠️ Warnings and Legal Note

1. **Root Privileges**: Some scans (e.g., ARP-scan) require sudo privileges. Run the script as needed.

2. **Ethical Usage**: Ensure you have permission to scan the target network or IP. Unauthorized scanning may lead to legal consequences.

---

## 📄 Scanning Options Explained

| Scan Type         | Command Example               | Description                                                                 |
|-------------------|-------------------------------|-----------------------------------------------------------------------------|
| **ARP-scan**      | `sudo arp-scan -l`            | Scans the local network for active devices using ARP packets.               |
| **Basic Nmap Scan**| `nmap <target>`               | Performs a simple ping and port scan on the target.                         |
| **Connect Scan**  | `nmap -sT <target>`           | Establishes a TCP connection to detect open ports.                          |
| **Stealth Scan**  | `nmap -sS <target>`           | A half-open TCP scan to detect open ports without full connection.          |
| **ACK Scan**      | `nmap -sA <target>`           | Tests the existence of a firewall using TCP ACK packets.                    |
| **OS Detection**  | `nmap -O <target>`            | Identifies the target operating system.                                     |
| **Service Detection** | `nmap -sV <target>`        | Detects the services and their versions on open ports.                      |
| **Aggressive Scan**| `nmap -A <target>`           | Combines OS detection, version detection, script scanning, and traceroute.  |

---

## 🖼️ Screenshot

![Screenshot from 2024-09-22 22-06-40](![ReconXplorer](https://github.com/user-attachments/assets/c471bef1-c030-41f5-9410-4cc75413459b)

---

## 🤝 Contributing
Feel free to contribute by creating pull requests or submitting issues. All contributions are welcome!

---

## 🧑‍💻 Author
### SHAMEEM KABEER
#### A passionate cybersecurity enthusiast who enjoys developing simple, effective tools to identify vulnerabilities.



