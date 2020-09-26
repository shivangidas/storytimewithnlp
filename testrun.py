from transformers import pipeline, set_seed
generator = pipeline('text-generation', model='distilgpt2')
set_seed(42)
print(generator("The story begins at the dawn of",
                max_length=100, num_return_sequences=1))
