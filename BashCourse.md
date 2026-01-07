# BashCourse

ChatGPT Prompt: please create a full selfstudy bash course for beginners who know a little bit about bash

Below is a complete, structured, self-study Bash course designed for beginners who already know a little bit of Bash but want to become confident, capable Bash users.
It includes explanations, exercises, projects, and recommended pacing.

You can copy it into a document or ask me to generate a PDF-style version.

🐚 Bash Self-Study Course (Beginner → Intermediate)
Estimated duration: 3–6 weeks (self-paced)
MODULE 0 — Prerequisites & Learning Setup

Goal: Ensure your environment is ready and your baseline knowledge is clear.

✔ Skills assumed

You can run commands in a terminal.

You understand what a shell is (basically).

You’ve used commands like ls, cd, cp, mv.

✔ Set up your environment

Linux, macOS, or WSL on Windows

Terminal + a text editor (VSCode, Vim, Nano, etc.)

Install bash-completion (optional but helpful)

🔎 Mini-check

Try:

echo "Hello world"
pwd
which bash

MODULE 1 — Core Bash Skills
Focus: commands, navigation, help system
1.1 File system navigation

ls, cd, pwd, tree

absolute vs relative paths

Exercises

Navigate to /usr/bin, list only files starting with “a”.

Make a folder playground and inside it create nested folders a/b/c.

1.2 Viewing, creating, and editing files

cat, tac, less, head, tail

Redirection: >, >>

touch

Exercises

Display the first 10 lines of /etc/passwd.

Combine two files into one using redirection.

1.3 Getting help

man, --help, whatis, apropos, type, which

Exercise

Use man to find what the -n flag does for grep.

MODULE 2 — Shell Essentials
Focus: commands, pipes, wildcards, quoting
2.1 Pipes & redirection

| chaining commands

Standard streams: stdin, stdout, stderr

Redirect stderr: 2>, &>

Exercises

Send the output of ls through sort.

Try redirecting both stdout and stderr to a file.

2.2 Wildcards (globbing)

*, ?, [], {}

File expansion vs regex (clarify difference!)

Exercise

List all files ending with .sh or .txt using brace expansion.

2.3 Quoting

Single quotes '...'

Double quotes "..."

Backslash escaping \

Exercises

Use echo to print a string containing $HOME without expansion.

Use quotes to allow spaces in filenames.

MODULE 3 — Bash Scripting Fundamentals
Focus: writing scripts, variables, logic, loops
3.1 Creating and running scripts

shebang #!/bin/bash

make scripts executable: chmod +x script.sh

local directory execution: ./script.sh

Exercise
Write a script that prints “Running script…” and today’s date.

3.2 Variables

Setting variables: name="Alice"

Using variables: $name

Environment variables: export

Exercise
Write a script that stores a username variable and prints a greeting.

3.3 Parameters / Arguments

$1, $2, $@, $#

quoting arguments

Exercise
Write a script that accepts a filename and prints the number of lines in it.

3.4 Conditionals

if, elif, else, fi

[ ] vs [[ ]]

commonly used tests: -e, -f, -d, numbers, strings

Exercise
Write a script that checks whether a path is a file, directory, or doesn’t exist.

3.5 Loops

for, while, until

break, continue

Exercise

Write a for loop to print numbers 1–20.

Write a while loop that waits until a file appears.

3.6 Reading input

read, read -p, read -s

Exercise
Make a password prompt using read -s.

MODULE 4 — Intermediate Scripting
Focus: functions, exit codes, error-handling, arrays
4.1 Exit codes

$? last command status

exit 0 vs exit 1

building reliable scripts

Exercise
Write a script that checks if a command succeeded and prints a message.

4.2 Functions

define:

myfunc() {
    echo "Hello from function"
}


passing arguments: $1, $@ inside functions

return codes

Exercise
Create a script with two functions: one validates input, the other processes it.

4.3 Arrays

index arrays:

arr=(a b c)
echo ${arr[1]}


loops over arrays

Exercise
Create an array of colors and loop to print each one.

4.4 String manipulation

${#var} length

substring extraction ${var:1:3}

replacement ${var/foo/bar}

4.5 Pattern matching / regular expressions

[[ "$var" =~ regex ]]

differences from globbing

Exercise
Validate if a string looks like an email.

MODULE 5 — Advanced Bash Tools
Focus: professional-grade Bash usage
5.1 Here-documents & here-strings

<<EOF

<<<

Exercise
Write a script that generates a multi-line config file using a heredoc.

5.2 Process management

jobs, ps, kill, &, fg, bg

running things in background

5.3 Command substitution

$(command)

nested substitution

5.4 Error-handling patterns

set -euo pipefail

traps:

trap cleanup EXIT


Exercise
Add a trap to a script to delete a temporary file when the script ends.

5.5 Secure & stable scripting conventions

quoting rules

avoid ls | grep anti-patterns

use shellcheck for linting

logging functions

MODULE 6 — Practical Tools in Bash
Focus: real-world utilities

grep, sed, awk (light introduction)

find, xargs

tar, gzip, zip

curl, wget

cron jobs

ssh basics

Exercise
Use find to delete all .tmp files larger than 1MB in a folder.

MODULE 7 — Mini-Projects (choose 2–5)
⭐ Beginner Projects

File Organizer

Automatically sort files in a directory by extension.

Simple Backup Tool

Compress a directory and timestamp the archive.

Log-File Analyzer

Extract IPs or error messages from log files.

⭐ Intermediate Projects

Todo List Manager (local text file)

System Info Dashboard (CPU, memory, disk, uptime)

Directory Watcher (detect new files)

⭐ Advanced Projects

Mini Package Installer (download files, verify, place them)

Data Processing Pipeline (clean/transform CSV data using tools)

I can generate full solutions for any of these.

MODULE 8 — Final Challenge Project
🏁 Build a fully documented, production-quality Bash script

Choose one:

Backup + Rotation + Logging System

Command-line Appointment Scheduler

Multi-file Automation Toolkit

Include:

arg parser (getopts)

colors for output

functions + error handling

a README

tests (optional)

MODULE 9 — Additional Learning Resources

Shellcheck (linting)

Bash official manual (advanced reference)

Google Shell Style Guide (writing clean Bash)

man bash (you’ll use this often)