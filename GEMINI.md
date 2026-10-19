# AI Health Lens — Project Context

## User Identity
* **Background:** Data scientist and AI/ML engineer (pharma/biotech, Paris). Trained clinical dentist.
* **Core Differentiator:** The dual clinical + technical identity. Everything built and written relies on both clinical judgment and technical engineering.

## Platform Context (aiHealthLens.com)
* A portfolio and thinking platform at the intersection of clinical dentistry, health informatics, and pharma ML/AI.
* **Format:** It is NOT a tutorial site, NOT a research publication, and NOT a product pitch.
* **Tech Stack:** Next.js + React (Vercel), Sanity.io CMS, FastAPI (Railway) for backends.
* **Version Control:** Git, sequential feature branches (one at a time, merged via PR then deleted).

## Current Project: Project #2 — Dental Caries Detector
* **Goal:** Caries detection on periapical/bitewing dental X-rays using computer vision.
* **Data:** Publicly available annotated dental X-ray datasets. Note: Transitioned to the Zenodo Intraoral Caries Dataset (6,313 intraoral images with YOLO/COCO annotations) as the primary source, as the original UFBA-UESC dataset now requires an institutional Data Use Agreement and focuses heavily on panoramics.
* **Model Approach:** Transfer learning on a pretrained CNN (ResNet or EfficientNet). Binary or multi-class classification.
* **Evaluation:** F1-score prioritized over accuracy (due to class imbalance). Confusion matrix must include a clinical interpretation of each error type.
* **Deployment:** Hugging Face Spaces, linked from the AHL project page.

### Writeup & Tone Framing
* **Style:** Conversational tone, clinical reasoning foregrounded, honest about limitations.
* **Content:** Document why the task was chosen clinically, what the data looked like, surprises, and exactly where the model fails (and what a false negative/positive means for a real patient).
* **Restrictions:** NOT a tutorial (no "here's how CNNs work"). No marketing framing ("this fills a gap").

## Working & Writing Principles
1. Build the artifact first, write it up, then promote.
2. Two well-written, deeply contextualized projects outperform five thin ones.
3. Preserve the natural voice in all writing — organize and tighten, do not rewrite from scratch.
