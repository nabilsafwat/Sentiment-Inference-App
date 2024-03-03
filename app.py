from fastapi import FastAPI, Form, Request
from fastapi.templating import Jinja2Templates
from transformers import pipeline

app = FastAPI()
templates = Jinja2Templates(directory="templates")
nlp = pipeline("sentiment-analysis")

@app.get("/")
def read_form(request: Request):
    return templates.TemplateResponse("index.html", {"request": request, "result": None})

@app.post("/predict")
async def predict_sentiment(request: Request, text: str = Form(...)):
    result = nlp(text)[0]
    return templates.TemplateResponse("index.html", {"request": request, "result": result["label"]})
