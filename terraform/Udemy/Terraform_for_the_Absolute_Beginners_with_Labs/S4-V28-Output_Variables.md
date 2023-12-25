### OUTPUT VARIABLES

output "<VARIABLE_NAME>" {
    value = "<VARIABLE_VALUE>"
    <arguments>
}

variable.tf

variable "filename" {
    default = "/root/pet.txt"
}

variable "content" {
    default = "I love pets"
}

variable "prefix" {
    default = "Mr"
}

variable "separator" {
    default = "."
}

variable "length" {
    default = "2"
}

main.tf

resource "local_file" "pet" {
    filename = var.filename
    content = "My Favourite Pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}

output pet-name {
    value = random_pet.my-pet.id
    description = "Record the value of the pet ID generated by the random_pet resource"
}


terraform output
or
terraform output pet-name