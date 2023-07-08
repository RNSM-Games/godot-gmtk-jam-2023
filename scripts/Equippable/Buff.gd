extends Equippable


@export_enum("Health", "Damage", "Move Speed") var buff_type : String

@export var buff_amount : float



func equip(character : Node2D):
    match buff_type:
        "Health":
            character.health += buff_amount
        "Damage":
            character.health += buff_amount
        "Move Speed":
            character.health += buff_amount
        