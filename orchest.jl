## Verify Python is installed
print(run(`python -c "import orchest; print(orchest)"`))

python_path = read(`which python`, String)
ENV["PYTHON"] = python_path

using PyCall

orchest = pyimport("orchest")
print(orchest)