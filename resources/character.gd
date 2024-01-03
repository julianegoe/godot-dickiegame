class_name CharacterResource
extends Resource

@export var name: String
@export var look_at_text: String
@export var hover_text: String

var dialogue_dict: Dictionary = {
  "explorer": {
	"id": 1,
	"key": "explorer",
	"name": "Angel-Mensch",
	"altName": "Forscher",
	"interactable": true,
	"currentDialogueNode": 0,
	"dialogue": [
	  {
		"index": 0,
		"text": "Tach auch.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Challo, was bist du?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 1,
			"unlockQuest": null
		  },
		  {
			"text": "Weißt du, wo meine Familie ist?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 2,
			"unlockQuest": null
		  },
		  {
			"text": "Tschüß.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  }
		],
		"endTree": false,
		"nextNode": null
	  },
	  {
		"index": 1,
		"text": "Ich bin Polarforscher und besorge mir gerade mein Abendessen.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Darf ich was abchaben?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 3,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 2,
		"text": "Du bist der erste Seehund, der mir in letzter Zeit begegnet ist.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Doof.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 4,
			"unlockQuest": null
		  },
		  {
			"text": "Du auch der erste Polarforscher.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 5,
			"unlockQuest": null
		  }
		],
		"endTree": false
	  },
	  {
		"index": 3,
		"text": "Nein.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Bütteeeee!",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 3,
			"unlockQuest": null
		  },
		  {
			"text": "Ok, dann nicht.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 4,
		"text": "Hmm.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [],
		"nextNode": null
	  },
	  {
		"index": 5,
		"text": "Und nu?",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Suchst du mit mir meine Familie?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 3,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 6,
		"text": "Wo ist mein Holz?",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Ich hab in letzter Zeit kein Cholz gesehen.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 7,
			"unlockQuest": "bribe"
		  },
		  {
			"text": "Vielleicht wurde es ja geklaut?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 8,
			"unlockQuest": "bribe"
		  },
		  {
			"text": "Weiß nicht...",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 9,
			"unlockQuest": "bribe"
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 7,
		"text": "Wo hast du es versteckt, du kleiner Gauner?",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Seh ich aus, als könnte ich Cholz tragen?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 9,
			"unlockQuest": null
		  },
		  {
			"text": "In meiner Speckfalte.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 9,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 8,
		"text": "Und ich kann mir vorstellen von wem, du kleiner Gauner.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Ich geb dir das Cholz, wenn du mit mir meine Familie suchst.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 10,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 9,
		"text": "Wir können das hier den ganzen Tag machen: Wo ist mein Holz?",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Ich hab in letzter Zeit kein Cholz gesehen.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 6,
			"unlockQuest": null
		  },
		  {
			"text": "Vielleicht wurde es ja geklaut.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 8,
			"unlockQuest": null
		  },
		  {
			"text": "Weiß nicht...",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 6,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	{
		"index": 9,
		"text": "Ich lass mich von dir nicht erpressen. Jetzt krieg ich die Suppe nicht warm wegen dir.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [],
		"nextNode": null
	  },
	  {
		"index": 11,
		"text": "Ich hab keine Ahnung, wo andere Seehunde sind. Aber sieh dich in meinem Zelt um und nimm dir, was du zur Suche brauchst.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Geht doch.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 4,
			"unlockQuest": "search_tent"
		  },
		  {
			"text": "Danke.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 4,
			"unlockQuest": "search_tent"
		  },
		  {
			"text": "Keine Ahnung, wie mir das helfen soll.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 4,
			"unlockQuest": "search_tent"
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 12,
		"text": "Danke fürs Feuermachen. Bist okay.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Hilfst du mir?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 11,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 13,
		"text": "Schon gefunden, wonach du suchst?",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Ei... Eisbär!!!",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 14,
			"unlockQuest": null
		  },
		  {
			"text": "Ich komme nicht durch die Chöhle.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 15,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 14,
		"text": "Ah. Das ist die alte Hilde.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Ist sie böse?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 15,
			"unlockQuest": null
		  },
		  {
			"text": "Lenk sie für mich ab!",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 16,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 15,
		"text": "Glaub nicht. Nur bisschen einsam.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Oh.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 16,
		"text": "Ha ha ha. Guter Witz.",
		"profile_texture_path": "res://assets/characters/explorer_profile.png",
		"choices": [
		  {
			"text": "Ja... nur ein Witz.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  }
	]
  },
  "polar_bear": {
	"id": 2,
	"key": "polar_bear",
	"name": "Eisbär",
	"altName": "Eisbär",
	"interactable": true,
	"currentDialogueNode": 0,
	"dialogue": [
	  {
		"index": 0,
		"text": "Grawrararar...",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [
		  {
			"text": "Cha... challo?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  },
		  {
			"text": "*Bibber*",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  },
		  {
			"text": "Ok, Tschüß.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 1,
		"text": "Oh, hab dich vorher gar nicht gesehen. Bin nachtblind musst du wissen.",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [
		  {
			"text": "Bist du lieb?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 2,
			"unlockQuest": null
		  },
		  {
			"text": "Ich hatte Angst vor dir im Dunkeln.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 3,
			"unlockQuest": null
		  },
		  {
			"text": "Hast du hier andere Seechunde gesehen?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 4,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 2,
		"text": "Warum fragst du das? Sehe ich so böse aus?",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [
		  {
			"text": "Ich dachte, Eisbären fressen Seechunde.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 5,
			"unlockQuest": null
		  },
		  {
			"text": "Schon. Ja.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 5,
			"unlockQuest": null
		  },
		  {
			"text": "Nur von weitem und im Dunkeln.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 5,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 3,
		"text": "Oh, das tut mir leid. Ich seh nicht so gut im Dunkeln und da hab ich dich versehentlich angeknurrt.",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [
		  {
			"text": "Grawrawr... fühlt sich nicht so gut an, oder?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  },
		  {
			"text": "Das erklärt so einiges.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 3,
			"unlockQuest": null
		  },
		  {
			"text": "Schwamm drüber. Hast du hier andere Seechunde gesehen?",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 4,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 4,
		"text": "Es sind hier gestern welche in der Höhle gewesen. Aber als ich mit ihnen sprechen wollte, sind sie immer tiefer hinein. Und wie gesagt, meine Augen.",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [
		  {
			"text": "Das müssen sie sein! Danke",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": "found"
		  },
		  {
			"text": "Aus dem Weg!",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": "found"
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 5,
		"text": "Ich krieg von dem Menschen immer frischen Fisch vor die Höhle geliefert. Warum sollte ich Seehunde jagen?",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [
		  {
			"text": "Verrückt.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  },
		  {
			"text": "Angel-Mensch!",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  },
		  {
			"text": "Mir hat er auch schon gecholfen.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  }
	]
  },
  "seal_family": {
	"id": 2,
	"key": "seal_family",
	"name": "Familie",
	"altName": "Meine Gang",
	"interactable": true,
	"currentDialogueNode": 0,
	"dialogue": [
	  {
		"index": 0,
		"text": "DICKIE! Du bist es wirklich?! Wir dachten, wir hätten dich im Schnee verloren!",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [
		  {
			"text": "Ich werdet nicht glauben, was das für ein Abenteuer war!",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 1,
			"unlockQuest": null
		  },
		  {
			"text": "Ich chab den Eisbär ganz alleine besiegt.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 1,
			"unlockQuest": null
		  },
		  {
			"text": "Ohne Hilde und den Angelmensch hätte ich es nie geschafft.",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": 1,
			"unlockQuest": null
		  }
		],
		"nextNode": null
	  },
	  {
		"index": 0,
		"text": "Komm in unsere Mitte und erzähl",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [
		  {
			"text": "Also, alles begann damit...",
			"profile_texture_path": "res://assets/dickie/dickie_move1.png",
			"nextNode": null,
			"unlockQuest": "end"
		  }
		],
		"nextNode": null
	  }
	]
  },
  "dickie": {
	"id": 3,
	"key": "dickie",
	"name": "Dickie",
	"altName": "Ich",
	"interactable": false,
	"currentDialogueNode": 0,
	"dialogue": [
	  {
		"index": 0,
		"text": "Ich chab geträumt, ich kann fliegen.",
		"profile_texture_path": "res://assets/characters/polar_bear_profile.png",
		"choices": [],
		"nextNode": null
	  }
	]
  }
}

func talk_to():
	return dialogue_dict[name]
	
	
