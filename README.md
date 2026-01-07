PulseTrack 🩺
PulseTrack is a modular iOS application built with Swift and SwiftUI. The project follows Clean Architecture principles to ensure the code is scalable, testable, and easy to maintain.

🏗 Project Architecture
The project is divided into a main application and a core logic library using Swift Package Manager (SPM).

1. PulseTrackCore (Logic Layer)
Located in Sources/PulseTrackCore/, this library contains the business logic of the app, divided into three main layers:

Domain: The "Brain" of the app. Contains high-level business rules, Entities (data models), and Use Case protocols.

Data: The "Worker." Handles API networking, local database storage (Persistence), and Repository implementations.

Core: Shared utilities, extensions, and common constants used across the entire package.

2. PulseTrackApp (Presentation Layer)
Located in PulseTrackApp/, this folder contains the SwiftUI views and the main app entry point. It consumes the logic provided by PulseTrackCore.

📂 Directory Structure
Plaintext

PulseTrack/
├── PulseTrackApp/             # iOS App Source & Xcode Project
├── Sources/                   # Core Logic Library
│   └── PulseTrackCore/        
│       ├── Domain/            # Business Models & Logic
│       ├── Data/              # Repositories & Networking
│       └── Core/              # Shared Utilities
├── Tests/                     # Unit and UI Tests
└── Package.swift              # Swift Package Manager Configuration
🛠 Getting Started
Prerequisites
macOS (latest version recommended)

Xcode 15+

Git

Installation
Clone the repository:

Bash

git clone https://github.com/busrakkan/PulseTrack.git
Open the project:

Open PulseTrackApp/PulseTrackApp.xcodeproj in Xcode.

Alternatively, open the root folder in VS Code to edit the Swift files.

🚀 Features (Planned)
[ ] Real-time heart rate monitoring.

[ ] Historical pulse data visualization.

[ ] Modular data syncing between local storage and cloud.