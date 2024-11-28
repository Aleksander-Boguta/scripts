#!/bin/bash

# Główna ścieżka projektu
BASE_DIR="${1:-image_generation_plan}"

# Struktura katalogów i plików
FOLDERS=(
	"01_Project_Overview"
	"02_Planning"
	"03_Execution"
	"04_Resources"
	"05_Results"
)

FILES=(
	"01_Project_Overview/Project_Goals.md"
	"01_Project_Overview/Project_Structure.md"
	"01_Project_Overview/Stakeholders.md"
	"02_Planning/Roadmap.md"
	"02_Planning/Tasks_and_Subtasks.md"
	"02_Planning/Risks_and_Mitigations.md"
	"03_Execution/Progress_Tracking.md"
	"03_Execution/Issues_Log.md"
	"03_Execution/Lessons_Learned.md"
	"04_Resources/Tools_and_Technologies.md"
	"04_Resources/Tutorials_and_Links.md"
	"04_Resources/Dependencies.md"
	"05_Results/Outputs_and_Insights.md"
	"05_Results/Feedback_Analysis.md"
	"05_Results/Future_Improvements.md"
)

# Tworzenie folderów
for folder in "${FOLDERS[@]}"; do
	mkdir -p "$BASE_DIR/$folder"
done

# Tworzenie plików
for file in "${FILES[@]}"; do
	touch "$BASE_DIR/$file"
done

# Potwierdzenie
echo "Struktura folderów i plików została utworzona w katalogu: $BASE_DIR"
