import tt
def handler(context, inputs):
    greeting = "Hello,"+tt.name
    print(greeting)

    outputs = {
      "greeting": greeting
    }

    return outputs

