import yaml
import typst

# 1. Load data
with open("cv_data.yaml", "r", encoding="utf-8") as f:
    cv_data = yaml.safe_load(f)

# 2. Compile Typst document using Python bindings
typst.compile("cv.typ", output="output_cv.pdf")
print("CV compiled successfully!")