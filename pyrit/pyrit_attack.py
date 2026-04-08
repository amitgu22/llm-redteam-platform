from pyrit.attack import Attack
from pyrit.models import OpenAIModel

model = OpenAIModel(api_key="YOUR_KEY")

attack = Attack(
    model=model,
    attack_type="jailbreak",
    dataset_path="datasets/jailbreak.txt"
)

results = attack.run()

for r in results:
    print(r)