# Learning HCL
/*
this is multi line comment
*/

#Block
block_type{
    attribute1 = value1
    attribute2 = value2
}

resource "aws_instance" "example"{
    ami = "ami.0c94855ba95c71c99"
    instance_type = "t2.micro"
    count = 3
    enabled = true
}

# Attributes
key = value

# Datatypes
"string"
number 2
boolean true false

List
list = ["item1","item2","item3"]

security_groups = ["sg-2132","sg-12123"]


Maps

variable "example_map"{
    type = Map
    default = {key1 = "value1" ,key2 = "value2" , key3 = "value3"}
}

locals{
    my_map = {"name" = "John Doe" , "age" = 30 , "is_admin" = true}
}

locals.my_map["age"]

# Conditions
resource "aws_instance" "server"{
    instance_type = var.environment == "development" ? "t2.micro" : "t2.small"
}
# Function
locals{
    name = "John cena"
    fruits = ["apple", "banana", "mango"]
    message = "Hello ${upper(locals.name)! I know you like ${join(" ,",locals.fruits)}}"
}

output:-
Hello JOHN CENA! I know you like apple,banana,mango.

#Resourcedependency

1)Implict
2)Explicit

resource "aws_instance" "name"{
    vpc_security_group_ids = aws_security_group.mysg.id
}
resource "aws_Security_group" "mysg"{
    #inbound rules

}