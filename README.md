# Server Performance Stats

A simple Bash script to analyze basic Linux server performance statistics in real time.  
This project is designed to strengthen Linux, Bash scripting, and system monitoring fundamentals.

---

## 📌 Project Overview

The goal of this project is to create a lightweight script that can be executed on **any Linux server** to quickly inspect system health and resource usage.

The script gathers and displays key performance metrics such as CPU usage, memory consumption, disk utilization, and top resource-hungry processes.

---

## ⚙️ Features

The script reports the following system statistics:

- **Total CPU usage**
- **Total memory usage**
- **Total disk usage**
- **Top 5 processes by CPU usage**
- **Top 5 processes by memory usage**
- OS version 
- System uptime
- Load average
- Currently logged-in users

---

## 🛠️ Requirements

- Linux operating system
- Bash shell
- Standard Linux utilities (`top`, `free`, `df`, `ps`, `awk`, `grep`, etc.)

No external dependencies are required.

---

## ▶️ Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/Roshni-Patil/Server-Performance-Stats.git
   
2. Make the script executable:
   ```bash
   chmod +x  "filename"

3. Run the script
   ```
   ./script.sh
