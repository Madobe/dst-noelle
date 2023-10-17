return {
	ACTIONFAIL =
	{
        REPAIR =
        {
            WRONGPIECE = "I don't think these will fit together.",
        },
        BUILD =
        {
            MOUNTED = "I should dismount first.",
            HASPET = "I've already got a companion.",
            VISIONFAIL = "Where did I put my Vision?"
        },
		SHAVE =
		{
			AWAKEBEEFALO = "I should wait until it's asleep.",
			GENERIC = "I can't shave that.",
			NOBITS = "It is already shaved.",
            REFUSE = "only_used_by_woodie",
		},
		STORE =
		{
			GENERIC = "It's full.",
			NOTALLOWED = "That can't go in there.",
			INUSE = "I should wait for my turn.",
            NOTMASTERCHEF = "This belongs to Warly.",
		},
        CONSTRUCT =
        {
            INUSE = "Someone's already using it.",
            NOTALLOWED = "I don't think those will fit together.",
            EMPTY = "I need something to build with.",
            MISMATCH = "Oh, wrong plans!",
        },
		RUMMAGE =
		{
			GENERIC = "I can't do that.",
			INUSE = "I should wait until they're done first.",
            NOTMASTERCHEF = "This belongs to Warly.",
		},
		UNLOCK =
        {
        	WRONGKEY = "This is the wrong key.",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "This is the wrong key.",
        	KLAUS = "I'm a little preoccupied!!",
			QUAGMIRE_WRONGKEY = "I'll just have to find another key.",
        },
		ACTIVATE =
		{
			LOCKED_GATE = "The gate is locked.",
		},
        COOK =
        {
            GENERIC = "I can't cook right now.",
            INUSE = "Oh! What are you cooking?",
            TOOFAR = "I must get closer.",
        },

        --warly specific action
		DISMANTLE =
		{
			COOKING = "only_used_by_warly",
			INUSE = "only_used_by_warly",
			NOTEMPTY = "only_used_by_warly",
        },
        FISH_OCEAN =
		{
			TOODEEP = "This rod wasn't made for deep sea fishing.",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_wickerbottom",
            NOBIRDS = "only_used_by_wickerbottom"
        },

        GIVE =
        {
            GENERIC = "That doesn't go there.",
            DEAD = "Maybe I should hold on to this.",
            SLEEPING = "I should wait until it is awake.",
            BUSY = "I'll try again in a second.",
            ABIGAILHEART = "It doesn't seem to work.",
            GHOSTHEART = "Perhaps this is a bad idea.",
            NOTGEM = "I need a gem.",
            WRONGGEM = "I need a different gem.",
            NOTSTAFF = "It's not quite the right shape.",
            MUSHROOMFARM_NEEDSSHROOM = "A mushroom would be more suited to this.",
            MUSHROOMFARM_NEEDSLOG = "A living log would be more suited to this.",
            SLOTFULL = "It is occupied already.",
            FOODFULL = "There's already a meal there.",
            NOTDISH = "It won't want to eat that.",
            DUPLICATE = "I already know this one.",
            NOTSCULPTABLE = "I need a different material.",
            NOTATRIUMKEY = "It's not quite the right shape.",
            CANTSHADOWREVIVE = "It won't resurrect.",
            WRONGSHADOWFORM = "It's not put together right.",
            NOMOON = "I need to see the moon for that to work.",
			PIGKINGGAME_MESSY = "I need to clean up first.",
			PIGKINGGAME_DANGER = "It's too dangerous for that right now.",
			PIGKINGGAME_TOOLATE = "It's too late for that now.",
        },
        GIVETOPLAYER =
        {
            FULL = "Their inventory is full.",
            DEAD = "Maybe I should hold on to this.",
            SLEEPING = "I should wait until they're awake.",
            BUSY = "I'll try again in a second.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Their inventory is full.",
            DEAD = "Maybe I should hold on to this.",
            SLEEPING = "I should wait until they're awake.",
            BUSY = "I'll try again in a second.",
        },
        WRITE =
        {
            GENERIC = "I think it's fine as is.",
            INUSE = "There's only room for one scribbler.",
        },
        DRAW =
        {
            NOIMAGE = "This'd be easier if I had the item in front of me.",
        },
        CHANGEIN =
        {
            GENERIC = "I don't want to change right now.",
            BURNING = "It's too dangerous right now!",
            INUSE = "It can only handle one style change at a time.",
        },
        ATTUNE =
        {
            NOHEALTH = "I don't feel well enough.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "I know better than to bother an angry beefalo!",
            INUSE = "Someone beat me to the saddle!",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "It won't let me do that while it's angry.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "I already know that one.",
            CANTLEARN = "I can't learn that one.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "This map was made for some other place.",
        },
        WRAPBUNDLE =
        {
            EMPTY = "I need to have something to wrap.",
        },
        PICKUP =
        {
			RESTRICTION = "I don't know how to use that.",
			INUSE = "I have to wait for my turn.",
        },
        SLAUGHTER =
        {
            TOOFAR = "It got away.",
        },
        REPLATE =
        {
            MISMATCH = "It needs another type of dish.",
            SAMEDISH = "I only need to use one dish.",
        },
        SAIL =
        {
        	REPAIR = "It doesn't need repairing.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "I need to row at the right time!",
            BAD_TIMING1 = "I missed the timing!",
            BAD_TIMING2 = "I need to keep a steady pace!",
        },
        LOWER_SAIL_FAIL =
        {
            "Oops!",
            "We're not slowing down!",
            "I have to try again!",
        },
        BATHBOMB =
        {
            GLASSED = "I can't, the surface is glassed over.",
            ALREADY_BOMBED = "That would be a waste of a bath bomb.",
        },
	},
	ACTIONFAIL_GENERIC = "I can't do that.",
	ANNOUNCE_BOAT_LEAK = "We're taking on a lot of water.",
	ANNOUNCE_BOAT_SINK = "I don't want to drown!",
	ANNOUNCE_DIG_DISEASE_WARNING = "It looks better already.",
	ANNOUNCE_PICK_DISEASE_WARNING = "Uh, is it supposed to smell like that?",
	ANNOUNCE_ADVENTUREFAIL = "That didn't go well. I'll have to try again.",
    ANNOUNCE_MOUNT_LOWHEALTH = "This beast seems to be wounded.",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",

    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",

	ANNOUNCE_BEES = "Bees!",
	ANNOUNCE_BOOMERANG = "Ow! I should try to catch that!",
	ANNOUNCE_CHARLIE = "What was that?",
	ANNOUNCE_CHARLIE_ATTACK = "Ouch!",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific
	ANNOUNCE_COLD = "It's cold...",
	ANNOUNCE_HOT = "It's hot...",
	ANNOUNCE_CRAFTING_FAIL = "I'm missing something.",
	ANNOUNCE_DEERCLOPS = "That could be bad.",
	ANNOUNCE_CAVEIN = "The ceiling is collapsing!",
	ANNOUNCE_ANTLION_SINKHOLE =
	{
		"The ground is shattering!",
		"A tremor!",
		"An earthquake!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "Allow me to pay tribute.",
        "A tribute for you, great Antlion.",
        "That should appease it for now",
	},
	ANNOUNCE_SACREDCHEST_YES = "I guess I'm worthy.",
	ANNOUNCE_SACREDCHEST_NO = "It's deemed me unworthy.",
    ANNOUNCE_DUSK = "The sun is setting.",

    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "Yum!",
		PAINFUL = "That was not edible.",
		SPOILED = "That was spoiled.",
		STALE = "That was stale.",
		INVALID = "I can't eat this.",
        YUCKY = "I shouldn't eat that.",

        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },

    ANNOUNCE_ENCUMBERED =
    {
        "Oof...",
        "AS you wish...",
        "Steady as stone...",
        "This is heavier... than a bookshelf...",
        "This is heavier... than a cart...",
        "As a dutiful maid would...",
        "As a good knight should...",
        "All in a day's work....",
        "This is heavy...",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING =
    {
		"I think it's time to leave!",
		"What's that?!",
		"It's not safe here.",
	},
    ANNOUNCE_RUINS_RESET = "All the monsters came back!",
    ANNOUNCE_SNARED = "I'm restrained!",
    ANNOUNCE_REPELLED = "It's shielded!",
	ANNOUNCE_ENTER_DARK = "It's so dark!",
	ANNOUNCE_ENTER_LIGHT = "I can see again!",
	ANNOUNCE_FREEDOM = "I'm freed!",
	ANNOUNCE_HIGHRESEARCH = "Ohhh, how exciting! Ahem.",
	ANNOUNCE_HOUNDS = "Did you hear that?",
	ANNOUNCE_WORMS = "Did you feel that?",
	ANNOUNCE_HUNGRY = "I'm hungry...",
	ANNOUNCE_HUNT_BEAST_NEARBY = "This track is fresh. The creature must be nearby.",
	ANNOUNCE_HUNT_LOST_TRAIL = "The creature's trail ends here.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "This wet soil can't hold a footprint.",
	ANNOUNCE_INV_FULL = "My inventory is full!",
	ANNOUNCE_KNOCKEDOUT = "Ooh... what happened?",
	ANNOUNCE_LOWRESEARCH = "I didn't learn very much from that.",
	ANNOUNCE_MOSQUITOS = "Mosquitoes!",
    ANNOUNCE_NOWARDROBEONFIRE = "I can't change while it's on fire!",
    ANNOUNCE_NODANGERGIFT = "I cannot open presents during combat!",
    ANNOUNCE_NOMOUNTEDGIFT = "I should dismount first.",
	ANNOUNCE_NODANGERSLEEP = "I cannot sleep during combat!",
	ANNOUNCE_NODAYSLEEP = "It's too bright out.",
	ANNOUNCE_NODAYSLEEP_CAVE = "I'm not tired.",
	ANNOUNCE_NOHUNGERSLEEP = "I'm too hungry to sleep.",
	ANNOUNCE_NOSLEEPONFIRE = "I don't exactly have a burning desire to sleep in that.",
	ANNOUNCE_NODANGERSIESTA = "I cannot nap during combat!",
	ANNOUNCE_NONIGHTSIESTA = "I should sleep instead of taking a nap.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I don't think I nap down here.",
	ANNOUNCE_NOHUNGERSIESTA = "I'm too hungry for a nap.",
	ANNOUNCE_NODANGERAFK = "I can now retire from this battle!",
	ANNOUNCE_NO_TRAP = "Well, that was easy.",
	ANNOUNCE_PECKED = "Ow! Quit it!",
	ANNOUNCE_QUAKE = "That doesn't sound good.",
	ANNOUNCE_RESEARCH = "Ohhh, how exciting! Ahem.",
	ANNOUNCE_SHELTER = "Ah! Shelter!",
	ANNOUNCE_THORNS = "Ouch!",
	ANNOUNCE_BURNT = "That was hot!",
	ANNOUNCE_TORCH_OUT = "My light ran out!",
	ANNOUNCE_THURIBLE_OUT = "Oh, it's depleted.",
	ANNOUNCE_FAN_OUT = "Oh, it's broken.",
    ANNOUNCE_COMPASS_OUT = "The compass has fallen apart.",
	ANNOUNCE_TRAP_WENT_OFF = "It's a trap!",
	ANNOUNCE_UNIMPLEMENTED = "Ouch! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "... Where am I?",
	ANNOUNCE_TOWNPORTALTELEPORT = "Leave it all to me! I will protect you!",
	ANNOUNCE_CANFIX = "\nI think I can repair this!",
	ANNOUNCE_ACCOMPLISHMENT = " A little dusty... Best give it a spring-cleaning!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "All in a day's work.",
	ANNOUNCE_INSUFFICIENTFERTILIZER = "It could use a bit more.",
	ANNOUNCE_TOOL_SLIP = "My hands slipped!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "That was close!",
	ANNOUNCE_TOADESCAPING = "The toad is losing interest.",
	ANNOUNCE_TOADESCAPED = "The toad got away.",


	ANNOUNCE_DAMP = "I should seek shelter.",
	ANNOUNCE_WET = "Oh dear, water.",
	ANNOUNCE_WETTER = "I never asked for this.",
	ANNOUNCE_SOAKED = "Hydro Dragon,\nHydro Dragon,\ndon't cry.",

	ANNOUNCE_WASHED_ASHORE = "I'm soaked, but alive somehow.",

    ANNOUNCE_DESPAWN = "Honorary Knight?",
	ANNOUNCE_BECOMEGHOST = "oOooOooo?",
	ANNOUNCE_GHOSTDRAIN = "My sanity is slipping away...",
	ANNOUNCE_PETRIFED_TREES = "Did something happen to the trees just now?",
	ANNOUNCE_KLAUS_ENRAGE = "It's enraged!",
	ANNOUNCE_KLAUS_UNCHAINED = "Its chains came off!",
	ANNOUNCE_KLAUS_CALLFORHELP = "It called for help!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "There's a form trapped inside.",
		GLASS_LOW = "I've almost got it out.",
		GLASS_REVEAL = "You're free!",
		IDOL_MED = "There's a form trapped inside.",
		IDOL_LOW = "I've almost got it out.",
		IDOL_REVEAL = "You're free!",
		SEED_MED = "There's a form trapped inside.",
		SEED_LOW = "I've almost got it out.",
		SEED_REVEAL = "You're free!",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "What was that?",
	ANNOUNCE_BRAVERY_POTION = "Those trees don't seem so spooky anymore.",
	ANNOUNCE_MOONPOTION_FAILED = "Perhaps I didn't let it steep long enough...",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Let me help you.",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Good as new!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Much better, thank-you.",

    ANNOUNCE_FLARE_SEEN = "I wonder who set that flare?",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Uh-oh. Sea monsters!",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD =
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD =
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING =
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Those ingredients didn't make anything.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "I left it on too long.",
    QUAGMIRE_ANNOUNCE_LOSE = "I have a bad feeling about this.",
    QUAGMIRE_ANNOUNCE_WIN = "Time to go!",

    ANNOUNCE_ROYALTY =
    {
        "Your majesty.",
        "Your highness.",
        "My liege!",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "My attacks are infused Electro!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "Leave them to me!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Steady as stone.",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "Leave it to me! All of it, whatever it is!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "I am immune to Hydro!",

    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "It seems my Electro infusion has worn off.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "It seems my attack buff was short-lived.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "Well, that was nice while it lasted.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "It seems my extra zeal was short-lived.",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "It seems like I am no longer immune to Hydro.",

    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK =
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
    },

	BATTLECRY =
	{
		GENERIC =
        {
            "Time to clean up!",
			"Leave it to me!",
			"As a dutiful maid would!",
			"As a good knight should!",
			"As you wish!"
        },
		PIG = "Time to clean up!",
		PREY = "I'll catch up.",
		SPIDER = "Time to clean up!",
		SPIDER_WARRIOR = "Time to clean up!",
		DEER = "As a good knight should.",
	},
	COMBAT_QUIT =
	{
		GENERIC = "All in a day's work!",
		PIG = "As you wish.",
		PREY = "It's too fast!",
		SPIDER = "Shoo, you nasty thing!",
		SPIDER_WARRIOR = "Shoo, you nasty thing!",
	},
	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "This feels familiar to me...",
        MULTIPLAYER_PORTAL_MOONROCK = "I think I can hear... singing?",
        MOONROCKIDOL = "I think I should offer this to the portal?",
        CONSTRUCTION_PLANS = "Leave it all to me!",

        ANTLION =
        {
            GENERIC = "It wants something from me.",
            VERYHAPPY = "I think we're on good terms.",
            UNHAPPY = "It looks mad.",
        },
        ANTLIONTRINKET = "Someone might be interested in this.",
        SANDSPIKE = "That was close!",
        SANDBLOCK = "A sand castle!",
        GLASSSPIKE = "Crystallized!",
        GLASSBLOCK = "Crystallized!",
        ABIGAIL_FLOWER =
        {
            GENERIC = "It's hauntingly beautiful.",
            LONG = "It appears to be weak.",
            MEDIUM = "It's gathering its strength.",
            SOON = "It looks invigorated!",
            HAUNTED_POCKET = "It wants down.",
            HAUNTED_GROUND = "What do you want? Water?",
        },

        BALLOONS_EMPTY = "Are these balloons?",
        BALLOON = "Oh! A balloon!",

        BERNIE_INACTIVE =
        {
            BROKEN = "I can mend it with a sewing kit!",
            GENERIC = "Ugh, that's going back in the wash...",
        },

        BERNIE_ACTIVE = "That teddy bear is moving around!",
        BERNIE_BIG = "How truly unnerving!",

        BOOK_BIRDS = "No point studying when I can just wing it.",
        BOOK_TENTACLES = "Someone'll get suckered into reading this.",
        BOOK_GARDENING = "I see no farm in reading that.",
        BOOK_SLEEP = "Strange, it's just 500 pages of telegraph codes.",
        BOOK_BRIMSTONE = "The beginning was dull, but got better near the end.",

        PLAYER =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WILSON =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WOLFGANG =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WAXWELL =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WX78 =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WILLOW =
        {
            GENERIC = "Hello, Miss %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WENDY =
        {
            GENERIC = "Hello, Miss %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WOODIE =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            BEAVER = "Mister %s? Is that you?",
            BEAVERGHOST = "I should get %s a Telltale Heart.",
            MOOSE = "Mister %s? Is that you?",
            MOOSEGHOST = "I should get %s a Telltale Heart.",
            GOOSE = "Mister %s? Is that you?",
            GOOSEGHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WICKERBOTTOM =
        {
            GENERIC = "Good day, Madame %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WES =
        {
            GENERIC = "Greetings, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WEBBER =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WATHGRITHR =
        {
            GENERIC = "Salutations, Miss %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WINONA =
        {
            GENERIC = "Hello, Miss %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WORTOX =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WORMWOOD =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },
        WARLY =
        {
            GENERIC = "Hello, Mister %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },

        WURT =
        {
            GENERIC = "Hello, Miss %s!",
            ATTACKER = "Greetings, %s! ...Wait, are you injured?",
            MURDERER = "Villain!",
            REVIVER = "%s is a nice person!",
            GHOST = "I should get %s a Telltale Heart.",
            FIRESTARTER = "%s? Have you been around a campfire?",
        },

        MIGRATION_PORTAL =
        {
            GENERIC = "If I had any friends, this could take me to them.",
            OPEN = "If I step through, will I still be me?",
            FULL = "It seems to be popular over there.",
        },
        GLOMMER =
        {
            GENERIC = "It's fuzzy! And slimy...",
            SLEEPING = "It's asleep.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "The petals shimmer in the light.",
            DEAD = "Oh dear, it's withered.",
        },
        GLOMMERWINGS = "Even its wings are fuzzy!",
        GLOMMERFUEL = "It appears to be quite volatile.",
        BELL = "Ding dong!",
        STATUEGLOMMER =
        {
			GENERIC = "What's this?",
			EMPTY = "It's broken.",
        },

        LAVA_POND_ROCK = "It appears to be volcanic rock.",

		WEBBERSKULL = "Uh, what's this? Maybe I should bury it somewhere...",
		WORMLIGHT = "Peculiar. It's glowing.",
		WORMLIGHT_LESSER = "It's glowing. A bit wrinkled however.",
		WORM =
		{
		    PLANT = "A peculiar glowing thing.",
		    DIRT = "This pile of dirt looks fresh...",
		    WORM = "It's a worm!",
		},
        WORMLIGHT_PLANT = "How peculiar. It's glowing.",
		MOLE =
		{
			HELD = "I don't think my pocket is its natural habitat.",
			UNDERGROUND = "Something is tunneling down there.",
			ABOVEGROUND = "It's a mole! ...it IS a mole, right?",
		},
		MOLEHILL = "A mole's burrow.",
		MOLEHAT = "Whan an interesting Elemental Sight.",

		EEL = "An eel.",
		EEL_COOKED = "An eel that has been cooked.",
		UNAGI = "It looks more appetizing this way.",
		EYETURRET = "I do not know why it helps me.",
		EYETURRET_ITEM = "I think it needs to be placed.",
		MINOTAURHORN = "All that remains of a once great beast.",
		MINOTAURCHEST = "My, what magnificent horns you have!",
		THULECITE_PIECES = "Fragments of a powerful material.",
		POND_ALGAE = "Some algae.",
		GREENSTAFF = "It appears to rewind time on an object.",
		GIFT = "Oh goodness, how lovely!",
        GIFTWRAP = "Wrapping presents is soothing work, isn't it?",
		POTTEDFERN = "A potted plant.",
        SUCCULENT_POTTED = "A succulent in a pot.",
		SUCCULENT_PLANT = "This is most resilient plant.",
		SUCCULENT_PICKED = "It will wither if not replanted.",
		SENTRYWARD = "Ah! A scrying orb.",
        TOWNPORTAL =
        {
			GENERIC = "It's some kind of teleporter.",
			ACTIVE = "The path is open.",
		},
        TOWNPORTALTALISMAN =
        {
			GENERIC = "A magical stone formed in the gut of a large beast.",
			ACTIVE = "The stone's magic has been activated.",
		},
        WETPAPER = "This may prove useful once dried.",
        WETPOUCH = "Perhaps something useful lies inside?",
        MOONROCK_PIECES = "These are eerily detailed...",
        MOONBASE =
        {
            GENERIC = "I felt a terrible chill run down my spine.",
            BROKEN = "This one looks like it can be repaired.",
            STAFFED = "Perhaps it thirsts for a sacrifice. Where's Webber...",
            WRONGSTAFF = "That doesn't look right...",
            MOONSTAFF = "Bathed in pale eternal light...",
        },
        MOONDIAL =
        {
			GENERIC = "I can keep track the moon's phases with this.",
			NIGHT_NEW = "It's a new moon.",
			NIGHT_WAX = "The moon is waxing.",
			NIGHT_FULL = "It's a full moon.",
			NIGHT_WANE = "The moon is waning.",
			CAVE = "There's no moon down here to measure.",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
        },
		THULECITE = "A rare but unusually durable material.",
		ARMORRUINS = "It's unusually light.",
		ARMORSKELETON = "It appears to shield me using Nightmare Fuel.",
		SKELETONHAT = "It gives me terrible visions.",
		RUINS_BAT = "Finally, a comfortably sturdy weapon!",
		RUINSHAT = "It seems like there's something flowing through it.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "Everything appears to be calm.",
            WARN = "It seems to be warning me.",
            WAXING = "The fuel is coming to life!",
            STEADY = "It's almost humming.",
            WANING = "I think it's turning off.",
            DAWN = "I guess it's nearly over.",
            NOMAGIC = "I don't think it's working.",
		},
		BISHOP_NIGHTMARE = "It's falling apart!",
		ROOK_NIGHTMARE = "It looks like it could break apart at any moment.",
		KNIGHT_NIGHTMARE = "It looks pretty worn down.",
		MINOTAUR = "That thing doesn't look happy.",
		SPIDER_DROPPER = "Note to self: Don't look up.",
		NIGHTMARELIGHT = "I wonder what function this served.",
		NIGHTSTICK = "It's electric!",
		GREENGEM = "It's a green gem!",
		MULTITOOL_AXE_PICKAXE = "An item with multiple uses!",
		ORANGESTAFF = "A staff of magical movement!",
		YELLOWAMULET = "It seems to absorb the darkness around it.",
		GREENAMULET = "I feel my mind opening when I wear it.",
		SLURPERPELT = "This must be useful for something.",

		SLURPER = "It's so hairy!",
		SLURPER_PELT = "Doesn't look all that much different.",
		ARMORSLURPER = "A soggy, sustaining, succulent suit.",
		ORANGEAMULET = "The gem fades with each use.",
		YELLOWSTAFF = "It summons a small star!",
		YELLOWGEM = "I can sense magic in it.",
		ORANGEGEM = "It's an orange gem.",
        OPALSTAFF = "Appears to summon a cold star into being.",
        OPALPRECIOUSGEM = "This gem seems special.",
        TELEBASE =
		{
			VALID = "It's powered and ready for use.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET =
		{
			VALID = "Looks ready.",
			GEMS = "It needs a gem.",
		},
		STAFFLIGHT = "That should chase the shadows away.",
        STAFFCOLDLIGHT = "An impressively condensed point of freezing magic.",

        ANCIENT_ALTAR = "An ancient and mysterious structure.",

        ANCIENT_ALTAR_BROKEN = "Parts of this are missing.",

        ANCIENT_STATUE = "It seems to throb out of tune with the world.",

        LICHEN = "How does it manage to grow like that?",
		CUTLICHEN = "Nutritious, but it won't last long.",

		CAVE_BANANA = "Bananas!",
		CAVE_BANANA_COOKED = "Yum!",
		CAVE_BANANA_TREE = "I didn't know bananas could grow in caves.",
		ROCKY = "It has terrifying claws.",

		COMPASS =
		{
			GENERIC="Which way am I facing?",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "It's sharp!",
        ARMORSNURTLESHELL = "It sticks to your back when you wear it.",
        BAT = "A creature of the night.",
        BATBAT = "An enchanted weapon. How exciting!",
        BATWING = "Surprisingly meaty.",
        BATWING_COOKED = "Crispy!",
        BATCAVE = "I don't want to wake them.",
        BEDROLL_FURRY = "It's so warm and comfy.",
        BUNNYMAN = "Hello! Are you friendly?",
        FLOWER_CAVE = "It's so dark down here.",
        GUANO = "Another kind of poop.",
        LANTERN = "A refuelable light source.",
        LIGHTBULB = "It's slowly burning out.",
        MANRABBIT_TAIL = "Fluffy!.",
        MUSHROOMHAT = "Ooo. What a delightfully wizened look.",
        MUSHROOM_LIGHT2 =
        {
            ON = "A light to repel the encroaching shadow.",
            OFF = "Now, how do I turn this thing on?",
            BURNT = "Oh no.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "A light to repel the encroaching shadow.",
            OFF = "Now, how do I turn this thing on?",
            BURNT = "Oh no.",
        },
        SLEEPBOMB = "It appears to be a sleeping bag.",
        MUSHROOMBOMB = "It's about to explode!",
        SHROOM_SKIN = "Frog skin must remain damp, not that this one minds.",
        TOADSTOOL_CAP =
        {
            EMPTY = "Just a hole in the ground.",
            INGROUND = "Something emerges!",
            GENERIC = "That toadstool's just asking to be cut down.",
        },
        TOADSTOOL =
        {
            GENERIC = "What an abomination!",
            RAGE = "It's hopping mad now!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "A death cap, surely.",
            BURNT = "Naught but ash.",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "These are some strange trees.",
            BLOOM = "You can't tell from far away, but it's quite smelly.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "I do like its glow.",
            BLOOM = "What a great effect!",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "A magic mushroom?",
            BLOOM = "It has a glowing presence.",
        },
        MUSHTREE_TALL_WEBBED = "The spiders thought this one was important.",
        SPORE_TALL =
        {
            GENERIC = "It's just drifting around.",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "It's like floating fire!",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_SMALL =
        {
            GENERIC = "Hasn't a care in the world.",
            HELD = "I'll keep a little light in my pocket.",
        },
        RABBITHOUSE =
        {
            GENERIC = "That's not a real carrot.",
            BURNT = "That's not a real roasted carrot.",
        },
        SLURTLE = "It is mindlessly chasing after rocks.",
        SLURTLE_SHELLPIECES = "Broken, but I might be useful.",
        SLURTLEHAT = "It provides protection.",
        SLURTLEHOLE = "A gastropod pod.",
        SLURTLESLIME = "Their mucus is explosive for some reason.",
        SNURTLE = "That one has a larger shell.",
        SPIDER_HIDER = "A cowardly spider.",
        SPIDER_SPITTER = "It's chewing on something.",
        SPIDERHOLE = "This is the source of the spider infestation.",
        SPIDERHOLE_ROCK = "This is the source of the spider infestation.",
        STALAGMITE = "A strange rock formation.",
        STALAGMITE_TALL = "Another stalagmite.",
        TREASURECHEST_TRAP = "How convenient!",

        TURF_CARPETFLOOR = "That's a quality, high-pile carpet sample!",
        TURF_CHECKERFLOOR = "That's my natural habitat.",
        TURF_DIRT = "Dusty.",
        TURF_FOREST = "Smells like mud.",
        TURF_GRASS = "Scratchy.",
        TURF_MARSH = "It's dripping all over.",
        TURF_METEOR = "A chunk of moon ground.",
        TURF_PEBBLEBEACH = "A chunk of beach.",
        TURF_ROAD = "Hastily cobbled stones.",
        TURF_ROCKY = "A chunk of ground.",
        TURF_SAVANNA = "A chunk of ground.",
        TURF_WOODFLOOR = "These are floorboards.",

		TURF_CAVE="Yet another ground type.",
		TURF_FUNGUS="Yet another ground type.",
		TURF_SINKHOLE="Yet another ground type.",
		TURF_UNDERROCK="Yet another ground type.",
		TURF_MUD="Yet another ground type.",

		TURF_DECIDUOUS = "Yet another ground type.",
		TURF_SANDY = "Yet another ground type.",
		TURF_BADLANDS = "Yet another ground type.",
		TURF_DESERTDIRT = "A chunk of ground.",
		TURF_FUNGUS_GREEN = "A chunk of ground.",
		TURF_FUNGUS_RED = "A chunk of ground.",
		TURF_DRAGONFLY = "This is imbued with some sort of natural fire deterrent.",

		POWCAKE = "What is this?",
        CAVE_ENTRANCE = "I wonder if that rock could be moved.",
        CAVE_ENTRANCE_RUINS = "This rock looks different from the one before.",

       	CAVE_ENTRANCE_OPEN =
        {
            GENERIC = "Perhaps once I'm better prepared.",
            OPEN = "The subterranean world awaits!",
            FULL = "I'll have to wait until someone leaves to enter.",
        },
        CAVE_EXIT =
        {
            GENERIC = "I'll just stay down here, I suppose.",
            OPEN = "Maybe I should go back up for some fresh air.",
            FULL = "There are too many people up there.",
        },

		MAXWELLPHONOGRAPH = "So that's where the music was coming from.",
		BOOMERANG = "Aerodynamical!",
		PIGGUARD = "It doesn't look as friendly as the others.",
		ABIGAIL = "Awww, she has a cute little bow.",
		ADVENTURE_PORTAL = "Where does this lead?",
		AMULET = "It can heal and resurrect me at a cost of its own existence.",
		ANIMAL_TRACK = "A sign of animal activity.",
		ARMORGRASS = "It's better than nothing.",
		ARMORMARBLE = "Its weight increase while worn, but not when carried. \nThis may become useful!",
		ARMORWOOD = "Crude armor cobbled together from log sections.",
		ARMOR_SANITY = "Wearing that makes me feel safe and insecure.",
		ASH =
		{
			GENERIC = "It will soon be scatter to the four winds if I don't collect it.",
			REMAINS_GLOMMERFLOWER = "The flower was incinerated in the teleportation!",
			REMAINS_EYE_BONE = "The eyebone was incinerated in the teleportation!",
			REMAINS_THINGIE = "My trip through the portal made it unrecognizable.",
		},
		AXE = "A trusty axe.",
		BABYBEEFALO =
		{
			GENERIC = "Awwww. So small!",
		    SLEEPING = "Sweet dreams!",
        },
        BUNDLE = "Somehow it's less heavy like this.",
        BUNDLEWRAP = "Wrapping things up should make them easier to carry.",
		BACKPACK = "Perfect for carrying additional provisions!",
		BACONEGGS = "Not often I get a breakfast like this.",
		BANDAGE = "Apply continuous pressure to the wound.",
		BASALT = "It appears to be indestructable!",
		BEARDHAIR = "This is human facial hair.",
		BEARGER = "A bear? Or a badger?",
		BEARGERVEST = "Whatever it was, its pelt makes for a fine garment.",
		ICEPACK = "Perfectly insulated.",
		BEARGER_FUR = "Oh my! That is thick.",
		BEDROLL_STRAW = "A little better than bare ground.",
		BEEQUEEN = "It's the queen of bees!",
		BEEQUEENHIVE =
		{
			GENERIC = "It's too sticky to walk on.",
			GROWING = "Was that there before?",
		},
        BEEQUEENHIVEGROWN = "This is giving me a bad feeling...",
        BEEGUARD = "They're just trying to protect their queen.",
        HIVEHAT = "How delightfully strange!",
        MINISIGN =
        {
            GENERIC = "A picture speaks a thousand words!",
            UNDRAWN = "We should draw something on there.",
        },
        MINISIGN_ITEM = "It's not much use like this. I should place it down.",
		BEE =
		{
			GENERIC = "I'd steer clear of that stinger.",
			HELD = "It seems displeased.",
		},
		BEEBOX =
		{
			READY = "Honey can be harvested from it.",
			FULLHONEY = "It's full of honey.",
			GENERIC = "A box full of bees, and honey.",
			NOHONEY = "It's empty.",
			SOMEHONEY = "It's not ready for harvesting.",
			BURNT = "Poor bees!",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "That's a lot of mushrooms!",
			LOTS = "Looks like a pretty good yield.",
			SOME = "We've got our first mushrooms!",
			EMPTY = "It must first be seeded with a cut specimen or fungal spore.",
			ROTTEN = "I should replace the log with a new one.",
			BURNT = "It is no more.",
			SNOWCOVERED = "I don't think it can grow in this cold.",
		},
		BEEFALO =
		{
			FOLLOWER = "It appears to be following me.",
			GENERIC = "It's a beefalo!",
			NAKED = "It looks cold.",
			SLEEPING = "It's asleep.",
            --Domesticated states:
            DOMESTICATED = "We're friends now.",
            ORNERY = "I can see fire in its eyes.",
            RIDER = "This fellow appears quite ridable.",
            PUDGY = "It has an amicable personality.",
		},

		BEEFALOHAT = "I kind of imagined a fur hat would feel fancier.",
		BEEFALOWOOL = "Thick beefalo wool.",
		BEEHAT = "This should protect me from the bees.",
        BEESWAX = "Could slow food spoilage if used correctly!",
		BEEHIVE = "Oh, a beehive!",
		BEEMINE = "A trap filled with bees.",
		BEEMINE_MAXWELL = "A trap filled with mosquitoes",
		BERRIES = "These berries are really sweet!",
		BERRIES_COOKED = "More balanced flavor, but they won't last long.",
        BERRIES_JUICY = "Extra tasty, though they won't last long.",
        BERRIES_JUICY_COOKED = "Better eat them before they spoil!",
		BERRYBUSH =
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "It's too hot to grow.",
			GENERIC = "A berry bush.",
			PICKED = "The berries are growing back, slowly.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "It looks a bit odd.",
			BURNING = "It's very much on fire.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It won't make any berries in this state.",
			WITHERED = "The heat even dehydrated the juicy berries!",
			GENERIC = "That bush looks ready for harvest.",
			PICKED = "It will have to wait.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "It looks a bit odd.",
			BURNING = "It's very much on fire.",
		},
		BIGFOOT = "Oh my!",
		BIRDCAGE =
		{
			GENERIC = "Now it just needs a bird.",
			OCCUPIED = "Chirp.",
			SLEEPING = "It's asleep.",
			HUNGRY = "It looks hungry.",
			STARVING = "It's starving.",
			DEAD = "Is it alive?",
			SKELETON = "That bird is definitely gone.",
		},
		BIRDTRAP = "I can catch birds with this!",
		CAVE_BANANA_BURNT = "I do not believe this one can be restored.",
		BIRD_EGG = "A small, normal egg.",
		BIRD_EGG_COOKED = "I wonder if this can resurrect someone?",
		BISHOP = "A clockwork bishop!",
		BLOWDART_FIRE = "This seems fundamentally unsafe.",
		BLOWDART_SLEEP = "Just don't breathe in.",
		BLOWDART_PIPE = "Projectile weaponry!",
		BLOWDART_YELLOW = "It has shocking accuracy.",
		BLUEAMULET = "It is cold.",
		BLUEGEM = "It sparkles with cold energy.",
		BLUEPRINT =
		{
            COMMON = "A detailed technical drawing.",
            RARE = "Such a rare and detailed drawing!",
        },
        SKETCH = "A picture for a sculpture. We'll need a potter's wheel to make it.",
		BLUE_CAP = "I was told that this has medicinal properties.",
		BLUE_CAP_COOKED = "I was told that this has medicinal properties.",
		BLUE_MUSHROOM =
		{
			GENERIC = "I was told that this has medicinal properties.",
			INGROUND = "It should be harvestable at night.",
			PICKED = "I wonder when will it grow back?",
		},
		BOARDS = "These can be used to make many things!",
		BONESHARD = "I wonder what did these belong to?",
		BONESTEW = "A hearty stew to put some meat on your bones!",
		BUGNET = "It's like a portable web!",
		BUSHHAT = "I can conceal myself using this.",
		BUTTER = "If only I had some tea and toast.",
		BUTTERFLY =
		{
			GENERIC = "I wonder if I can catch it.",
			HELD = "It is captured.",
		},
		BUTTERFLYMUFFIN = "A curative confectionary!",
		BUTTERFLYWINGS = "I was told these have medicinal properties.",
		BUZZARD = "That seems like a bad sign.",

		SHADOWDIGGER = "Now there's more of him.",

		CACTUS =
		{
			GENERIC = "A barrel cactus.",
			PICKED = "Desperate times call for desperate measures.",
		},
		CACTUS_MEAT_COOKED = "At least it's safe to eat now.",
		CACTUS_MEAT = "It's still dangerous. \nPerhaps I should cook it first.",
		CACTUS_FLOWER = "Oh I know! I can use this to adorn a salad!",

		COLDFIRE =
		{
			EMBERS = "That fire needs more fuel or it's going to go out.",
			GENERIC = "This will keep the heat and dark at bay.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and cool.",
			OUT = "It can be re-lit.",
		},
		CAMPFIRE =
		{
			EMBERS = "That fire needs more fuel or it's going to go out.",
			GENERIC = "This will keep the cold and dark at bay.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and warm.",
			OUT = "It can be re-lit.",
		},
		CANE = "I can walk faster with this!",
		CATCOON = "You're a weird looking raccoon.",
		CATCOONDEN =
		{
			GENERIC = "It's a den in a stump.",
			EMPTY = "Seems like its owner ran out of lives.",
		},
		CATCOONHAT = "A cuddly hat!",
		COONTAIL = "This would make a stylish hat.",
		CARROT = "It's a carrot!",
		CARROT_COOKED = "Ready to be eaten or added into other dishes!",
		CARROT_PLANTED = "It's a carrot that's in the ground.",
		CARROT_SEEDS = "It's a carrot seed.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Now I can show everyone what I found!",
			BURNING = "Oh no.",
			BURNT = "Nothing but ash now.",
		},
		WATERMELON_SEEDS = "I think I should plant these.",
		CAVE_FERN = "It's a fern.",
		CHARCOAL = "This can still be used as fuel.",
        CHESSPIECE_PAWN = "It looks like a pawn.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "Represents the protective walls of a castle.",
            STRUGGLE = "The pieces are in motion!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "A knight, in service to the king. Or perhaps the queen.",
            STRUGGLE = "And I thought chivalry was dead!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "It's a stone bishop.",
            STRUGGLE = "The pieces are in motion!",
        },
        CHESSPIECE_MUSE = "I've got a bad feeling about this one.",
        CHESSPIECE_FORMAL = "This must be the king?",
        CHESSPIECE_HORNUCOPIA = "I'm starting to get hungry just looking at it...",
        CHESSPIECE_PIPE = "It's got bubbles coming out the top.",
        CHESSPIECE_DEERCLOPS = "It feels like its eye follows you.",
        CHESSPIECE_BEARGER = "It was a lot bigger up close.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Such expression in her eyes.",
        },
        CHESSPIECE_DRAGONFLY = "A monument to a very trying day.",
        CHESSPIECE_BUTTERFLY = "It looks nice, doesn't it?",
        CHESSPIECE_ANCHOR = "It's as heavy as it looks.",
        CHESSPIECE_MOON = "The missing chunk is a recent development.",
        CHESSJUNK1 = "A broken clockwork horse.",
        CHESSJUNK2 = "A broken clockwork bishop.",
        CHESSJUNK3 = "A broken clockwork rook.",
		CHESTER = "Thank you for holding my provisions!",
		CHESTER_EYEBONE =
		{
			GENERIC = "I get the feeling I'm being watched.",
			WAITING = "It's resting for now",
		},
		COOKEDMANDRAKE = "At least its quiet now.",
		COOKEDMEAT = "Ready to be eaten or added into other dishes!",
		COOKEDMONSTERMEAT = "This should slow its spoilage,\nbut I'd rather not eat it as is.",
		COOKEDSMALLMEAT = "A little meat is better than none.",
		COOKPOT =
		{
			COOKING_LONG = "It's got a bit to go before it's ready.",
			COOKING_SHORT = "Almost done!",
			DONE = "Mmmmm! It's ready to eat!",
			EMPTY = "In need of ingredients.",
			BURNT = "The pot got cooked.",
		},
		CORN = "High in fructose!",
		CORN_COOKED = "Popped corn!",
		CORN_SEEDS = "I think I should plant these.",
        CANARY =
		{
			GENERIC = "Let's look out for each other, you and I.",
			HELD = "I'm not squishing you, am I?",
		},
        CANARY_POISONED = "Oh dear, we should probably leave.",

		CRITTERLAB = "Is there something in there?",
        CRITTER_GLOMLING = "You're pretty cute for a giant bug!",
        CRITTER_DRAGONLING = "My, what big eyes you have!",
		CRITTER_LAMB = "Aww, you're like a dust bunny that came to life!",
        CRITTER_PUPPY = "I think it wants belly rubs.",
        CRITTER_KITTEN = "Giving it pats is relaxing.",
        CRITTER_PERDLING = "My feathered friend!",
		CRITTER_LUNARMOTHLING = "My lunar friend!",

		CROW =
		{
			GENERIC = "As long as you don't come with any bad omens, we'll get along fine.",
			HELD = "A pocket isn't quite the best place for a bird.",
		},
		CUTGRASS = "Cut grass, ready for arts and crafts.",
		CUTREEDS = "I think I could make something useful from this.",
		CUTSTONE = "Some smoothed rock slabs.",
		DEADLYFEAST = "That doesn't quite smell right...",
		DEER =
		{
			GENERIC = "Is it staring at me?",
			ANTLER = "What an impressive antler!",
		},
        DEER_ANTLER = "It looks like a key, does it not?",
        DEER_GEMMED = "The gem imbues its attacks with a fearsome power!",
		DEERCLOPS = "It's enormous!!",
		DEERCLOPS_EYEBALL = "Now what is this good for?",
		EYEBRELLAHAT =	"Nice and dry underneath.",
		DEPLETED_GRASS =
		{
			GENERIC = "It's probably a tuft of grass.",
		},
        GOGGLESHAT = "What a stylish pair of goggles.",
        DESERTHAT = "Quality eye protection.",
		DEVTOOL = "The keeper is fading away; the creator has not yet come.",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "That looks out-of-place.",
		DIVININGROD =
		{
			COLD = "The signal is very faint.",
			GENERIC = "It's some kind of homing device.",
			HOT = "This thing's going crazy!",
			WARM = "I'm headed in the right direction.",
			WARMER = "Must be getting pretty close.",
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.",
			READY = "It looks like it needs a large key.",
			UNLOCKED = "Now the machine can work!",
		},
		DIVININGRODSTART = "That rod looks useful!",
		DRAGONFLY = "That's one fly dragon!",
		ARMORDRAGONFLY = "Pyrotechnic armor!",
		DRAGON_SCALES = "They're still warm.",
		DRAGONFLYCHEST =
		{
			GENERIC = "A fireproof chest.",
            UPGRADED_STACKSIZE = "A fireproof chest with an impossibly expansive interior.",
		},
		DRAGONFLYFURNACE =
		{
			HAMMERED = "I don't think it's supposed to look like that.",
			GENERIC = "A magically powered furnace.", --no gems
			NORMAL = "It is burning at half strength.", --one gem
			HIGH = "The magic of the two gems keeps it burning at maximum strength.", --two gems
		},

        HUTCH = "Thank you for holding my provisions!",
        HUTCH_FISHBOWL =
        {
            GENERIC = "I've never had one of these before.",
            WAITING = "Oh dear.",
        },
		LAVASPIT =
		{
			HOT = "Hot spit!",
			COOL = "It's cooled down, almost like basalt.",
		},
		LAVA_POND = "Molten rock. Best not to get too close.",
		LAVAE = "I believe it is a larval dragonfly.",
		LAVAE_COCOON = "Its cocooned. When will it hatch I wonder?",
		LAVAE_PET =
		{
			STARVING = "Its fires are dying out.",
			HUNGRY = "You must eat to keep your fires burning.",
			CONTENT = "It glows contentedly.",
			GENERIC = "A faithful, fiery friend.",
		},
		LAVAE_EGG =
		{
			GENERIC = "There's a faint warmth coming from inside.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I don't think that egg is warm enough.",
			COMFY = "It's warm and toasty.",
		},
		LAVAE_TOOTH = "It's an egg tooth!",

		DRAGONFRUIT = "What a bizarre fruit.",
		DRAGONFRUIT_COOKED = "Its sweet and seems to have curative properties!",
		DRAGONFRUIT_SEEDS = "I think I should plant these.",
		DRAGONPIE = "The dragonfruit is very filling!",
		DRUMSTICK = "A leg of poultry.",
		DRUMSTICK_COOKED = "Now it's even tastier!",
		DUG_BERRYBUSH = "Now it can be taken anywhere.",
		DUG_BERRYBUSH_JUICY = "This could be replanted closer to home.",
		DUG_GRASS = "It can be planted anywhere now.",
		DUG_MARSH_BUSH = "This needs to be planted.",
		DUG_SAPLING = "This needs to be planted.",
		DURIAN = "Oh, that odor...",
		DURIAN_COOKED = "Cooking this certainly did not improve its odor.",
		DURIAN_SEEDS = "I think I should plant these.",
		EARMUFFSHAT = "At least my ears won't get cold...",
		EGGPLANT = "Its shade of purple reminds me of someone...",
		EGGPLANT_COOKED = "I guess its coloration was merely skin deep...",
		EGGPLANT_SEEDS = "I think I should plant these.",

		ENDTABLE =
		{
			BURNT = "Oh no.",
			GENERIC = "It's pleasant to see a little decor out here.",
			EMPTY = "Ah, could use a doily, wouldn't you say?",
			WILTED = "A pity. Shall we find replacements?",
			FRESHLIGHT = "It's nice to have a little light.",
			OLDLIGHT = "The light is waning.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE =
		{
			BURNING = "That's an impressive blaze.",
			BURNT = "Completely charred.",
			CHOPPED = "It has been chopped.",
			POISON = "It looks unhappy about me stealing those birchnuts!",
			GENERIC = "It's all leafy. Most of the time.",
		},
		ACORN = "Seems edible. One way to find out!",
        ACORN_SAPLING = "In time, it'll be a new tree.",
		ACORN_COOKED = "Roasted to perfection!",
		BIRCHNUTDRAKE = "A mad little seed.",
		EVERGREEN =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all piney."
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "This sad tree has no cones.",
		},
		TWIGGYTREE =
		{
			BURNING = "That's an impressive blaze.",
			BURNT = "Completely charred.",
			CHOPPED = "It has been chopped.",
			GENERIC = "It's all stick-y.",
			DISEASED = "It looks sick. More so than usual.",
		},
		TWIGGY_NUT_SAPLING = "It doesn't need any help to grow.",
        TWIGGY_OLD = "That tree seems quite flimsy.",
		TWIGGY_NUT = "I think I should plant this.",
		EYEPLANT = "I think I'm being watched.",
		INSPECTSELF = "Leave it to me! All of it, whatever it is!",
		FARMPLOT =
		{
			GENERIC = "I should try planting some crops.",
			GROWING = "I should go do something in the meantime while they grow.",
			NEEDSFERTILIZER = "I think it needs to be fertilized.",
			BURNT = "I don't think anything will grow in a pile of ash.",
		},
		FEATHERHAT = "Wearing this seems to attract birds to my location.",
		FEATHER_CROW = "A feather from a black bird.",
		FEATHER_ROBIN = "A feather from a red bird.",
		FEATHER_ROBIN_WINTER = "A feather from a grey bird.",
		FEATHER_CANARY = "A feather from a yellow bird.",
		FEATHERPENCIL = "I feel like I should write something poetic with this...",
		FEM_PUPPET = "She's trapped!",
		FIREFLIES =
		{
			GENERIC = "How pretty!",
			HELD = "Now, where should I put you all...",
		},
		FIREHOUND = "Its disposition is fiery.",
		FIREPIT =
		{
			EMBERS = "That fire needs more fuel or it's going to go out.",
			GENERIC = "This will keep the cold and dark at bay.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and warm.",
			OUT = "It can be re-lit.",
		},
		COLDFIREPIT =
		{
			EMBERS = "That fire needs more fuel or it's going to go out.",
			GENERIC = "This will keep the heat and dark at bay.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and cool.",
			OUT = "It can be re-lit.",
		},
		FIRESTAFF = "I can start fires from a safe distance with this!",
		FIRESUPPRESSOR =
		{
			ON = "Begone, fire!",
			OFF = "This should preserve its fuel until needed.",
			LOWFUEL = "The fuel tank is getting a bit low.",
		},

		FISH = "Fresh from the murky depths!",
		FISHINGROD = "Hook, line and stick!",
		FISHSTICKS = "I wonder where did the sticks go...",
		FISHTACOS = "Cooked fish in a crunchy shell!",
		FISH_COOKED = "Grilled to perfection.",
		FISH_RAW = "A chunk of fish meat.",
		FISH_RAW_SMALL = "A small bit of fish.",
		FLINT = "A vital resource for building many rudimentary tools!",
		FLOWER =
		{
            GENERIC = "It's so pretty!",
            ROSE = "From where I am from, roses represents the saying: \n\"As wine bottles are corked, so too are my lips sealed.\"",
        },
        FLOWER_WITHERED = "I don't think it got enough sun.",
		FLOWERHAT = "It smells like prettiness!",
		FLOWER_EVIL = "Something is wrong with that flower...",
		FOLIAGE = "Some leafy greens.",
		FOOTBALLHAT = "Protective gear for full-contact endeavors!",
        FOSSIL_PIECE = "Perhaps I can reassemble it into what it once was.",
        FOSSIL_STALKER =
        {
			GENERIC = "Its still missing some pieces.",
			FUNNY = "That was not assembled correctly.",
			COMPLETE = "It appears to be assembled correct.",
        },
        STALKER = "I don't think it's friendly.",
        STALKER_ATRIUM = "We'll defend ourselves if we have to.",
        STALKER_MINION = "Time to clean up!",
        THURIBLE = "Curious. It smells like roses.",
        ATRIUM_OVERGROWTH = "I don't recognize any of these symbols.",
		FROG =
		{
			DEAD = "He's croaked.",
			GENERIC = "A small beast with four limbs.",
			SLEEPING = "It's asleep.",
		},
		FROGGLEBUNWICH = "Not usually served in a sandwich, but I'll give it a try.",
		FROGLEGS = "I've heard these are a delicacy.",
		FROGLEGS_COOKED = "It mostly tastes like chicken.",
		FRUITMEDLEY = "What a wonderful selection of fruit!",
		FURTUFT = "Black and white fur.",
		GEARS = "A pile of mechanical parts.",
		GHOST = "Oh no.",
		GOLDENAXE = "That's a shiny axe.",
		GOLDENPICKAXE = "Isn't gold supposed to be really soft?",
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?",
		GOLDENSHOVEL = "At least I can dig with style.",
		GOLDNUGGET = "It sure is shiny!",
		GRASS =
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "It's not going to grow back while it's so hot.",
			BURNING = "That's burning fast!",
			GENERIC = "It's a tuft of grass.",
            PICKED = "I believe they shall grow back.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "It looks a bit odd.",
		},
		GRASSGEKKO =
		{
			GENERIC = "Is that lizard made of grass?",
			DISEASED = "It looks a bit odd.",
		},
		GREEN_CAP = "I was told that this has medicinal properties after being cooked.",
		GREEN_CAP_COOKED = "I was told that this has medicinal properties.",
		GREEN_MUSHROOM =
		{
			GENERIC = "I was told that this has medicinal properties after being cooked.",
			INGROUND = "It should be harvestable at night.",
			PICKED = "I wonder when will it grow back?",
		},
		GUNPOWDER = "It looks like pepper.",
		HAMBAT = "Desperate times call for desperate measures.",
		HAMMER = "Some times it pays to be a bit more forceful.",
		HEALINGSALVE = " I can patch others and myself up with this",
		HEATROCK =
		{
			FROZEN = "It's almost too cold to hold.",
			COLD = "Pleasantly cool.",
			GENERIC = "A pocketful of stone and temperature.",
			WARM = "Comfortably lukewarm.",
			HOT = "It's almost too hot to hold.",
		},
		HOME = "Home sweet home!",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "Oh no.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "Oh no.",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "Oh no.",
		},
		HONEY = "Sweet and delicious!",
		HONEYCOMB = "I could start a new hive with this.",
		HONEYHAM = "Sticky honey roast!",
		HONEYNUGGETS = "Bite-sized sweetened meat!",
		HORN = "It belonged to a beefalo in the past.",
		HOUND = "That hound is not domesticated.",
		HOUNDCORPSE =
		{
			GENERIC = "It would be in our best interest to dispose of it quickly.",
			BURNING = "I think we're safe now.",
			REVIVING = "Oh no!",
		},
		HOUNDBONE = "A fallen foe.",
		HOUNDMOUND = "This is the source of the hounds in this area.",
		ICEBOX = "This should help slow the spoilage of our supplies!",
		ICEHAT = "This should keep me cool, and wet.",
		ICEHOUND = "Its disposition is cold.",
		INSANITYROCK =
		{
			ACTIVE = "It's calling my name...",
			INACTIVE = "It's cold and black.",
		},
		JAMMYPRESERVES = "I'd love some toast to put this jam on. Oh well.",

		KABOBS = "Lunch on a stick.",
		KILLERBEE =
		{
			GENERIC = "I'd steer clear of that stinger.",
			HELD = "It seems displeased.",
		},
		KNIGHT = "En garde!",
		KOALEFANT_SUMMER = "The trail led us right to it.",
		KOALEFANT_WINTER = "The trail led us right to it.",
		KRAMPUS = "Its going for our supplies!",
		KRAMPUS_SACK = "It seems bigger inside than outside.",
		LEIF = "A tree golem!",
		LEIF_SPARSE = "A tree golem!",
		LIGHTER  = "This belongs to Willow.",
		LIGHTNING_ROD =
		{
			CHARGED = "That was close!",
			GENERIC = "This should keep us safe.",
		},
		LIGHTNINGGOAT =
		{
			GENERIC = "A bouncy goat!",
			CHARGED = "What happened to you? You look a mess!",
		},
		LIGHTNINGGOATHORN = "My hand feels tingly while holding it.",
		GOATMILK = "I think the electricity curdled it.",
		LITTLE_WALRUS = "The juvenile is not as aggressive.",
		LIVINGLOG = "This log is a lot livelier than it should be.",
		LOG =
		{
			BURNING = "A piece of wood, on fire.",
			GENERIC = "A piece of wood, ready for arts and crafts.",
		},
		LUCY = "Hello Miss Lucy! Where is Mister Woodie?",
		LUREPLANT = "What a colorful plant.",
		LUREPLANTBULB = "Now I can move the plant as I wish.",
		MALE_PUPPET = "He's trapped!",

		MANDRAKE_ACTIVE = "Oh my, are you in need of something?",
		MANDRAKE_PLANTED = "I've heard strange things about those plants.",
		MANDRAKE = "Alas, poor mandrake!",

        MANDRAKESOUP = "It's vegetable soup, now.",
        MANDRAKE_COOKED = "It doesn't seem so strange anymore.",
        MAPSCROLL = "A blank map. Perhaps we should draw on it at a cartographer's desk.",
        MARBLE = "Fancy!",
        MARBLEBEAN = "I think I should plant this.",
        MARBLEBEAN_SAPLING = "It doesn't need any help to grow.",
        MARBLESHRUB = "What a nicely sculpted topiary.",
        MARBLEPILLAR = "A perfectly good marble column just sitting there for anyone to take.",
        MARBLETREE = "A tree made entirely of marble.",
        MARSH_BUSH =
        {
			BURNT = "One less thorn patch to worry about.",
            BURNING = "It's on fire.",
            GENERIC = "It looks thorny.",
            PICKED = "Ouch.",
        },
        BURNT_MARSH_BUSH = "One less thorn patch to worry about.",
        MARSH_PLANT = "It's a plant.",
        MARSH_TREE =
        {
            BURNING = "Spikes and fire!",
            BURNT = "Now it's burnt and spiky.",
            CHOPPED = "It has been chopped.",
            GENERIC = "Those spikes look sharp!",
        },
        MAXWELL = "He is unusually tall.",
        MAXWELLHEAD = "He sure likes to talk.",
        MAXWELLLIGHT = "What a curious light.",
        MAXWELLLOCK = "It's missing something.",
        MAXWELLTHRONE = "That doesn't look very comfortable.",
        MEAT = "It's a bit rustic, but it'll do.",
        MEATBALLS = "A pile of processed meat. Who knows what went into this.",
        MEATRACK =
        {
            DONE = "It's ready!",
            DRYING = "Meat takes a while to dry.",
            DRYINGINRAIN = "The rain has temporarily halted the drying process.",
            GENERIC = "I should dry some meats.",
            BURNT = "The rack got dried.",
            DONE_NOTMEAT = "It's ready!",
            DRYING_NOTMEAT = "Drying things is not an exact science.",
            DRYINGINRAIN_NOTMEAT = "Rain, rain, go away. Be wet again another day.",
        },
        MEAT_DRIED = "This should last longer, ready to be eaten or used as a cooking ingredient.",
        MERM = "Seems fishy and unfriendly.",
        MERMHEAD =
        {
            GENERIC = "I'm uncertain whether it is rotting or fermenting.",
            BURNT = "It's neither rotting nor fermenting now.",
        },
        MERMHOUSE =
        {
            GENERIC = "Obviously dilapidated.",
            BURNT = "On beyond dilapidated.",
        },
        MINERHAT = "Being able to see makes exploring a lot easier.",
        MONKEY = "What a curious little creature.",
        MONKEYBARREL = "This is the source of the little creatures in this area.",
        MONSTERLASAGNA = "I don't think I should eat this.",
        FLOWERSALAD = "A bowl of foliage! Highly nutritious, and it's delicious!",
        ICECREAM = "Ice cream!",
        WATERMELONICLE = "The melon is entirely encased in ice.",
        TRAILMIX = "Crunchy and healthy!",
        HOTCHILI = "I can handle a little bit of spice.",
        GUACAMOLE = "Was this dish supposed to be made from those ingredients?",
        MONSTERMEAT = "I'd rather not eat it as is.",
        MONSTERMEAT_DRIED = "This should slow its spoilage,\nbut I'd rather not eat it as is.",
        MOOSE = "I don't exactly know what that thing is.",
        MOOSE_NESTING_GROUND = "That's where the mom keeps her babies.",
        MOOSEEGG = "The egg of that most fearsome creature.",
        MOSSLING = "Its feathers are frazzled!",
        FEATHERFAN = "I've never seen a feather so big! Or have I...",
        MINIFAN = "It cools me when I run, how nice!",
        GOOSE_FEATHER = "This would be useful if I could find more of them.",
        STAFF_TORNADO = "I've never seen a weather vane employed as a weapon.",
        MOSQUITO =
        {
            GENERIC = "That's a huge mosquito!",
            HELD = "Hey, is that my blood?",
        },
        MOSQUITOSACK = "It's probably someone else's blood...",
        MOUND =
        {
            DUG = "A desecrated burial mound.",
            GENERIC = "A burial mound.",
        },
        NIGHTLIGHT = "It gives off a spooky light.",
        NIGHTMAREFUEL = "The stuffing of nightmares.",
        NIGHTSWORD = "I should utilize this with consideration.",
        NITRE = "An alchemical ingredient, How exciting!.",
        ONEMANBAND = "I've never played any of these instruments, but I'm sure I'll do great!",
        OASISLAKE =
		{
			GENERIC = "That's a pretty lake!",
			EMPTY = "Perhaps it's not the right season.",
		},
        PANDORASCHEST = "A little dusty... Best give it a spring-cleaning!",
        PANFLUTE = "A well constructed instrument!",
        PAPYRUS = "Some sheets of paper.",
        WAXPAPER = "Some sheets of wax paper.",
        PENGUIN = "What a classy bird.",
        PERD = "That's an unusually large bird!",
        PEROGIES = "Little pockets of food!",
        PETALS = "How colorful!",
        PETALS_EVIL = "I'm not sure I want to hold those.",
        PHLEGM = "It's thick and pliable.",
        PICKAXE = "I can use this to acquire minerals.",
        PIGGYBACK = "This should shield our supplies from the elements!",
        PIGHEAD =
        {
            GENERIC = "Well that's not alarming at all.",
            BURNT = "Oh no.",
        },
        PIGHOUSE =
        {
            FULL = "I wonder what they do in there.",
            GENERIC = "At least they are comfortable.",
            LIGHTSOUT = "I wonder what they do in there.",
            BURNT = "Oh no.",
        },
        PIGKING = "He appears to be the leader of the village.",
        PIGMAN =
        {
            DEAD = "Rest well...",
            FOLLOWER = "Thank you for acccompanying me!",
            GENERIC = "Hello! How are you?",
            GUARD = "He doesn't look as friendly as the others.",
            WEREPIG = "A creature of the night!",
        },
        PIGSKIN = "The hide of a pig creature that once was.",
        PIGTENT = "It's a tent of pigs.",
        PIGTORCH = "I wonder what it means?",
        PINECONE = "I think I should plant this.",
        PINECONE_SAPLING = "In time, it'll be a new tree.",
        LUMPY_SAPLING = "In time, it'll be a new tree.",
        PITCHFORK = "A purposeful tool for prying turf.",
        PLANTMEAT = "The plant produced a meaty substance.",
        PLANTMEAT_COOKED = "The heat has made this a suitable meal.",
        PLANT_NORMAL =
        {
            GENERIC = "It's a plant.",
            GROWING = "It is not yet ready for harvest.",
            READY = "It looks mature, now.",
            WITHERED = "It couldn't survive the heat.",
        },
        POMEGRANATE = "Is it supposed to have this many parts?",
        POMEGRANATE_COOKED = "It appears to have curative properties now!",
        POMEGRANATE_SEEDS = "I think I should plant these.",
        POND = "A small, but deep freshwater pond.",
        POOP = "The inevitable byproduct of life.",
        FERTILIZER = "That is definitely a bucket full of poop.",
        PUMPKIN = "That's a huge pumpkin!",
        PUMPKINCOOKIE = "Pumpkin cookies, goody!",
        PUMPKIN_COOKED = "It's all warm now?",
        PUMPKIN_LANTERN = "You're not so spooky!",
        PUMPKIN_SEEDS = "I think I should plant these.",
        PURPLEAMULET = "It's whispering to me.",
        PURPLEGEM = "It gives off a strange aura.",
        RABBIT =
        {
            GENERIC = "It's looking for carrots.",
            HELD = "It's skittish.",
        },
        RABBITHOLE =
        {
            GENERIC = "It looks like a small animal's burrow.",
            SPRING = "The entrance has collapsed in on itself.",
        },
        RAINOMETER =
        {
            GENERIC = "It measures cloudiness.",
            BURNT = "The rain did not come in time.",
        },
        RAINCOAT = "It keeps me warm and dry.",
        RAINHAT = "Excellent apparel for traversing rainy weather.",
        RATATOUILLE = "I hope there aren't any rats in it, but you never know around here.",
        RAZOR = "Never hurts to have more tools!",
        REDGEM = "It feels warm even on the coldest nights.",
        RED_CAP = "I was told that red usually indicates poison.",
        RED_CAP_COOKED = "I was told that red usually indicates poison.",
        RED_MUSHROOM =
        {
            GENERIC = "I was told that red usually indicates poison.",
			INGROUND = "It should be harvestable at night.",
			PICKED = "I wonder when will it grow back?",
        },
        REEDS =
        {
            BURNING = "Oh no.",
            GENERIC = "It's a clump of reeds.",
            PICKED = "All the useful reeds have already been picked.",
        },
        RELIC = "Remnants of a bygone civilization.",
        RUINS_RUBBLE = "This can probably be repaired.",
        RUBBLE = "Broken furniture.",
        RESEARCHLAB =
        {
            GENERIC = "It's a research station. I can learn new things with it.",
            BURNT = "Oh no.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "I can learn to combine many things with it!",
            BURNT = "Oh no.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "A dark and powerful energy radiates from it.",
            BURNT = "Oh no.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "I don't quite understand how it's supposed to work.",
            BURNT = "Oh no.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "Adventuring insurance!",
            BURNT = "Oh no.",
        },
        RESURRECTIONSTONE = "That stone has regenerative powers.",
        ROBIN =
        {
            GENERIC = "Does that mean winter is gone?",
            HELD = "Are you happy in my pocket?",
        },
        ROBIN_WINTER =
        {
            GENERIC = "What pretty white feathers.",
            HELD = "It's so soft.",
        },
        ROBOT_PUPPET = "They're trapped!",
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",
            OUT = "It looks harmless.",
            LOW = "The fires are cooling.",
            NORMAL = "It's hot.",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "It looks like it can be moved.",
            RAISED = "I need to clear the surrounding boulders first.",
        },
        ROCK = "I'll need to mine it before I can use it.",
        PETRIFIED_TREE = "What could have turned it to stone?",
        ROCK_PETRIFIED_TREE = "What could have turned it to stone?",
        ROCK_PETRIFIED_TREE_OLD = "What could have turned it to stone?",
        ROCK_ICE =
        {
            GENERIC = "A weirdly isolated glacier.",
            MELTED = "It's just a puddle.",
        },
        ROCK_ICE_MELTED = "Won't be useful until it freezes again.",
        ICE = "Chilling.",
        ROCKS = "Now, what shall I make with these?",
        ROOK = "A rook? Or is it a castle?",
        ROPE = "An essential building material.",
        ROTTENEGG = "Oh, that odor...",
        ROYAL_JELLY = "It's so sweet!",
        JELLYBEAN = "Nothing better than a handful of jellybeans!",
        SADDLE_BASIC = "I've got a saddle, now I just need an animal to ride...",
        SADDLE_RACE = "This should help my mount pick up the pace.",
        SADDLE_WAR = "A saddle fit for battle!",
        SADDLEHORN = "This will help getting the saddle off.",
        SALTLICK = "Keeps livestock nice and docile.",
        BRUSH = "Not my idea of a good hair brush but my animal companions seem to like it.",
		SANITYROCK =
		{
			ACTIVE = "It's calling my name...",
			INACTIVE = "It's cold and black.",
		},
		SAPLING =
		{
			BURNING = "That's burning fast!",
			WITHERED = "It's not going to grow back while it's so hot.",
			GENERIC = "It's a sapling.",
            PICKED = "I believe they shall grow back.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "It looks a bit odd.",
		},
   		SCARECROW =
   		{
			GENERIC = "Doesn't look too scary.",
			BURNING = "Oh no.",
			BURNT = "Oh no.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "We can make stone sculptures with this.",
			BLOCK = "Ready for sculpting.",
			SCULPTURE = "Looks great!",
			BURNT = "Oh no.",
   		},
        SCULPTURE_KNIGHTHEAD = "Where's the rest of it?",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "It's an odd marble statue.",
			UNCOVERED = "I guess he cracked under the pressure.",
			FINISHED = "At least it's back in one piece now.",
			READY = "Something's moving inside.",
		},
        SCULPTURE_BISHOPHEAD = "Is that a head?",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "It looks old, but it feels new.",
			UNCOVERED = "There's a big piece missing.",
			FINISHED = "Now what?",
			READY = "Something's moving inside.",
		},
        SCULPTURE_ROOKNOSE = "Where did this come from?",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "It's some sort of marble statue.",
			UNCOVERED = "It's not in the best shape.",
			FINISHED = "All patched up.",
			READY = "Something's moving inside.",
		},
        GARGOYLE_HOUND = "These are eerily detailed...",
        GARGOYLE_WEREPIG = "These are eerily detailed...",
		SEEDS = "Each one is a tiny mystery.",
		SEEDS_COOKED = "Toasty!",
		SEWING_KIT = "I'm pretty good at sewing and mending!",
		SEWING_TAPE = "It's so handy!",
		SHOVEL = "There's a lot going on underground.",
		SILK = "Despite its origins, it's surprisingly durable!",
		SKELETON = "Oh no.",
		SCORCHED_SKELETON = "Oh no.",
		SKULLCHEST = "I'm not sure if I want to open it.",
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
			SLEEPING = "It's asleep.",
		},
		SMALLMEAT = "It's a small, raw piece of meat.",
		SMALLMEAT_DRIED = "This should last longer, ready to be eaten or used as a cooking ingredient.",
		SPAT = "What a crusty looking animal.",
		SPEAR = "That's one pointy stick.",
		SPEAR_WATHGRITHR = "I can appreciate a finely crafted weapon.",
		WATHGRITHRHAT = "Surprisingly practical.",
		SPIDER =
		{
			DEAD = "Good riddance!",
			GENERIC = "Oh no.",
			SLEEPING = "I should keep my distance.",
		},
		SPIDERDEN = "This is the source of the spider infestation.",
		SPIDEREGGSACK = "Do I have to carry this around?",
		SPIDERGLAND = "It has a tangy, antiseptic smell.\nPerhaps I can use this to treat injuries.",
		SPIDERHAT = "I was told that this will allow me\nto exert psionic control over the spiders.",
		SPIDERQUEEN = "Oh no!",
		SPIDER_WARRIOR =
		{
			DEAD = "Good riddance!",
			GENERIC = "Looks even meaner than usual.",
			SLEEPING = "I should keep my distance.",
		},
		SPOILED_FOOD = "This should probably be disposed of.",
        STAGEHAND =
        {
			AWAKE = "It does not appear to be hostile...",
			HIDING = "Was that here before?",
        },
        STATUE_MARBLE =
        {
            GENERIC = "It looks like a pawn.",
            TYPE1 = "It's a fancy marble statue.",
            TYPE2 = "It's a fancy marble statue.",
            TYPE3 = "It's a fancy marble statue.", --bird bath type statue
        },
		STATUEHARP = "What happened to the head?",
		STATUEMAXWELL = "He's a lot shorter in person.",
		STEELWOOL = "I used to use this to scrub dishes.",
		STINGER = "Its small size and sharp point will come in handy.",
		STRAWHAT = "This will offer some protection from the sun.",
		STUFFEDEGGPLANT = "A vegetable stuffed with more vegetable.",
		SWEATERVEST = "This vest is dapper as all get-out.",
		REFLECTIVEVEST = "That could keep one moderately cool.",
		HAWAIIANSHIRT = "Still smells like flowers.",
		TAFFY = "It's almost entirely sugar.",
		TALLBIRD = "That's a tall bird! It seems territorial.",
		TALLBIRDEGG = "What a huge egg!",
		TALLBIRDEGG_COOKED = "Delicious and nutritious.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "This egg requires warmth.",
			GENERIC = "Looks like it's hatching!",
			HOT = "Are eggs supposed to sweat?",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "What a huge egg!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "What is it? Are you hungry?",
			STARVING = "Oh dear, I think its starving...",
			SLEEPING = "It's asleep.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "I can now use this to travel to another place!",
			GENERIC = "This appears to be a gateway to another place!",
			LOCKED = "There's still something missing.",
			PARTIAL = "The device is in a partial state of completion.",
		},
		TELEPORTATO_BOX = "I wonder what's inside?",
		TELEPORTATO_CRANK = "This looks complicated...",
		TELEPORTATO_POTATO = "What is this supposed to be, exactly?",
		TELEPORTATO_RING = "This looks important.",
		TELESTAFF = "That could reveal the world.",
		TENT =
		{
			GENERIC = "I should get some rest.",
			BURNT = "Oh no.",
		},
		SIESTAHUT =
		{
			GENERIC = "A nice place for an afternoon nap, safely out of the heat.",
			BURNT = "Oh no.",
		},
		TENTACLE = "That looks dangerous.",
		TENTACLESPIKE = "Quite a nasty weapon.",
		TENTACLESPOTS = "It appears to be waterproof.",
		TENTACLE_PILLAR = "It's enormous!",
        TENTACLE_PILLAR_HOLE = "It shall return eventually.",
		TENTACLE_PILLAR_ARM = "Are these all from the same creature?",
		TENTACLE_GARDEN = "This one seems different.",
		TOPHAT = "What a nice hat.",
		TORCH = "It'll keep the darkness at bay. For a time, at least.",
		TRANSISTOR = "I don't understand how it works, but it does.",
		TRAP = "A simple stick-and-basket trap.",
		TRAP_TEETH = "This is a nasty surprise.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!",
		TREASURECHEST =
		{
			GENERIC = "A storage chest for our supplies.",
			BURNT = "Oh no.",
			UPGRADED_STACKSIZE = "A large storage chest for our supplies.",
		},
		TREASURECHEST_TRAP = "Something feels off about this one...",
		CHESTUPGRADE_STACKSIZE = "I can make more room for supplies!", -- Describes the kit upgrade item.
		SACRED_CHEST =
		{
			GENERIC = "I hear whispers. It wants something.",
			LOCKED = "\"Ad virtutem\".",
		},
		TREECLUMP = "How about we explore the area ahead of us later?",

		TRINKET_1 = "They are all melted together.", --Melted Marbles
		TRINKET_2 = "It can't make a sound. Perhaps it's fake.", --Fake Kazoo
		TRINKET_3 = "The knot is stuck.", --Gord's Knot
		TRINKET_4 = "Is it just me, or do his eyes follow me around?", --Gnome
		TRINKET_5 = "What is this?", --Toy Rocketship
		TRINKET_6 = "Maybe I can find a use for these.", --Frazzled Wires
		TRINKET_7 = "How elating!", --Ball and Cup
		TRINKET_8 = "I'm sure I'll find a use for it.", --Rubber Bung
		TRINKET_9 = "Never know when you'll need a spare button.", --Mismatched Buttons
		TRINKET_10 = "Has someone lost their dental work?", --Dentures
		TRINKET_11 = "There's a name on it... \"HAL\"?", --Lying Robot
		TRINKET_12 = "It's all withered.", --Dessicated Tentacle
		TRINKET_13 = "Is it just me, or do his eyes follow me around?", --Gnomette
		TRINKET_14 = "Now if I only had some tea...", --Leaky Teacup
		TRINKET_15 = "Perhaps I can find the rest of the chessboard.", --Pawn
		TRINKET_16 = "Perhaps I can find the rest of the chessboard.", --Pawn
		TRINKET_17 = "Is this a spoon or a fork?", --Bent Spork
		TRINKET_18 = "Something rattling inside.", --Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", --Unbalanced Top
		TRINKET_20 = "I can scratch my own back, but\nperhaps someone else can appreciate it!", --Backscratcher
		TRINKET_21 = "Alas, it is all bent out of shape.", --Egg Beater
		TRINKET_22 = "It's too frayed to be of use, but\nperhaps I'll find another use for this.", --Frayed Yarn
		TRINKET_23 = "I dont have a need for it.", --Shoehorn
		TRINKET_24 = "It's empty.", --Lucky Cat Jar
		TRINKET_25 = "It's not a very pleasant smell.", --Air Unfreshener
		TRINKET_26 = "This was important to one very specific person once.", --Potato Cup
		TRINKET_27 = "Now at least the wardrobe can be organized.", --Coat Hanger
		TRINKET_28 = "Perhaps I can find the rest of the chessboard.", --Rook
        TRINKET_29 = "Perhaps I can find the rest of the chessboard.", --Rook
        TRINKET_30 = "Perhaps I can find the rest of the chessboard.", --Knight
        TRINKET_31 = "Perhaps I can find the rest of the chessboard.", --Knight
        TRINKET_32 = "Will it tell me my future?", --Cubic Zirconia Ball
        TRINKET_33 = "I hope this doesn't attract spiders.", --Spider Ring
        TRINKET_34 = "The paw grants three wishes, with terribly ironic results.\nSo the story goes.", --Monkey Paw
        TRINKET_35 = "Whatever was inside is gone now.", --Empty Elixir
        TRINKET_36 = "Oh, how spooky!", --Faux fangs
        TRINKET_37 = "Looks like firewood to me.", --Broken Stake
        TRINKET_38 = "This simply does not work right.", -- Binoculars Griftlands trinket
        TRINKET_39 = "It appears to be an abandoned glove.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "The needle moves rather sluggishly.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "I'm not sure what this was for.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "Thank goodness this snake is just a fake.", -- Toy Cobra Hot Lava trinket
        TRINKET_43 = "What a fun little toy.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "Is that plant still alive?", -- Broken Terrarium ONI trinket
        TRINKET_45 = "It keeps making strange sounds.", -- Odd Radio ONI trinket
        TRINKET_46 = "What is this?", -- Hairdryer ONI trinket

        HALLOWEENCANDY_1 = "A nice change from baked apples.",
        HALLOWEENCANDY_2 = "Is this even food?",
        HALLOWEENCANDY_3 = "It could use some butter and salt.",
        HALLOWEENCANDY_4 = "Squishy.",
        HALLOWEENCANDY_5 = "It almost seems a shame to eat them.",
        HALLOWEENCANDY_6 = "I... don't think I'll be eating those.",
        HALLOWEENCANDY_7 = "A little extra fiber never hurt anyone.",
        HALLOWEENCANDY_8 = "How spooky!",
        HALLOWEENCANDY_9 = "Chewy! And only a little wormy.",
        HALLOWEENCANDY_10 = "A curious flavor!",
        HALLOWEENCANDY_11 = "I fear I've a terrible weakness for a spot of chocolate.",
        HALLOWEENCANDY_12 = "I'm sure it tastes better than it looks.", --ONI meal lice candy
        HALLOWEENCANDY_13 = "It's a little too sweet for my taste.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "Oh no, it's spicy!", --Hot Lava pepper candy
        CANDYBAG = "A festive bag for seasonal treats.",

		HALLOWEEN_ORNAMENT_1 = "How spooky!",
		HALLOWEEN_ORNAMENT_2 = "I should hang this somewhere.",
		HALLOWEEN_ORNAMENT_3 = "How creepy!",
		HALLOWEEN_ORNAMENT_4 = "This looks really authentic!",
		HALLOWEEN_ORNAMENT_5 = "This would look good in a tree somewhere.",
		HALLOWEEN_ORNAMENT_6 = "If I put it in a tree it'd look almost real",

		HALLOWEENPOTION_DRINKS_WEAK = "Not as potent as I would have liked.",
		HALLOWEENPOTION_DRINKS_POTENT = "An impressive elixir.",
        HALLOWEENPOTION_BRAVERY = "Bottled valor.",
		HALLOWEENPOTION_MOON = "A fine pot of tea, with a side of mutation.",
		HALLOWEENPOTION_FIRE_FX = "It appears combustible.",
		MADSCIENCE_LAB = "This is a bit outside my area of expertise...",
		LIVINGTREE_ROOT = "I could plant this somewhere.\nShould I however?",
		LIVINGTREE_SAPLING = "It'll eventually grow up big and terrifying.",

        DRAGONHEADHAT = "Leave it to me, I will protect you!",
        DRAGONBODYHAT = "Leave it to me, I can take the middle part!",
        DRAGONTAILHAT = "Leave it to me, I shall bring up the rear!",
        PERDSHRINE =
        {
            GENERIC = "I feel like it wants something.",
            EMPTY = "I need to plant something there.",
            BURNT = "Oh no.",
        },
        REDLANTERN = "What a colorful little lantern.",
        LUCKY_GOLDNUGGET = "What a lucky find!",
        FIRECRACKERS = "Lucky firecrackers!",
        PERDFAN = "It's inordinately large.",
        REDPOUCH = "Something jingling inside it.",
        WARGSHRINE =
        {
            GENERIC = "I should make something fun.",
            EMPTY = "I need to put a torch in it.",
            BURNING = "I should make something fun.", --for willow to override
            BURNT = "Oh no.",
        },
        CLAYWARG =
        {
        	GENERIC = "Earth hounds!",
        	STATUE = "Did it just move?",
        },
        CLAYHOUND =
        {
        	GENERIC = "Earth hounds!",
        	STATUE = "It looks so real.",
        },
        HOUNDWHISTLE = "This should stop a dog in its tracks.",
        CHESSPIECE_CLAYHOUND = "Well, it hasn't sprung to life yet. So far so good.",
        CHESSPIECE_CLAYWARG = "Well, it hasn't sprung to life yet. So far so good.",

		PIGSHRINE =
		{
            GENERIC = "More stuff to make.",
            EMPTY = "It's hungry for meat.",
            BURNT = "Oh no.",
		},
		PIG_TOKEN = "This should allow me to initiate a wrestling match.",
		PIG_COIN = "I can use this to acquire temporary assistance.",
		YOTP_FOOD1 = "A meaty feast!",
		YOTP_FOOD2 = "...Maybe someone else will take it?",
		YOTP_FOOD3 = "Nothing fancy, but it will do.",

		PIGELITE1 = "En garde!", --BLUE
		PIGELITE2 = "En garde!", --RED
		PIGELITE3 = "En garde!", --WHITE
		PIGELITE4 = "En garde!", --GREEN

		PIGELITEFIGHTER1 = "En garde!", --BLUE
		PIGELITEFIGHTER2 = "En garde!", --RED
		PIGELITEFIGHTER3 = "En garde!", --WHITE
		PIGELITEFIGHTER4 = "En garde!", --GREEN

		BISHOP_CHARGE_HIT = "Ouch!",
		TRUNKVEST_SUMMER = "Nice and breezy!",
		TRUNKVEST_WINTER = "Nice and warm!",
		TRUNK_COOKED = "I'm still not sure I want to eat this.",
		TRUNK_SUMMER = "Well, part of it is still cuddly.",
		TRUNK_WINTER = "It's so soft and squishy!",
		TUMBLEWEED = "I wonder what that tumbleweed may have picked up.",
		TURKEYDINNER = "Tastes like victory!",
		TWIGS = "An essential resource for many crafts!",
		UMBRELLA = "This should help me stay dry.",
		GRASS_UMBRELLA = "It's still better than nothing.",
		UNIMPLEMENTED = "It doesn't look finished,\nso how about we explore the area ahead of us later?",
		WAFFLES = "I'm waffling on whether it needs more syrup.",
		WALL_HAY =
		{
			GENERIC = "These are hay bales.",
			BURNT = "Oh no.",
		},
		WALL_HAY_ITEM = "These are hay bales.",
		WALL_STONE = "That's a nice wall!",
		WALL_STONE_ITEM = "These seem quite secure.",
		WALL_RUINS = "That's a nice wall!",
		WALL_RUINS_ITEM = "These seem quite secure.",
		WALL_WOOD =
		{
			GENERIC = "Pointy!",
			BURNT = "Oh no.",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "I feel safe behind this wall... it makes me sleepy...",
		WALL_MOONROCK_ITEM = "Oh dear, did I just hear it whisper?",
		WALL_DREADSTONE = "I feel so... safe?",
		WALL_DREADSTONE_ITEM = "Oh dear, did I just hear it whisper?",
		FENCE = "That's a good looking fence!",
        FENCE_ITEM = "A good looking fence!",
        FENCE_GATE = "That's a good looking door!",
        FENCE_GATE_ITEM = "A good looking door!",
		WALRUS = "I wish I could converse with them,\nbut they appear hostile to strangers.",
		WALRUSHAT = "A wee plaid tammie!",
		WALRUS_CAMP =
		{
			EMPTY = "I think someone was here.",
			GENERIC = "I've heard of houses like this,\nbut I've never seen one until now!",
		},
		WALRUS_TUSK = "That's a pretty impressive tooth.",
		WARDROBE =
		{
			GENERIC = "I could always change my look this time around.",
            BURNING = "Oh no.",
			BURNT = "Oh no.",
		},
		WARG = "It appears to be the leader of the pack.",
		WASPHIVE = "I had better keep my distance.",
		WATERBALLOON = "A balloon, filled with water?\nOhhh, how exciting! Ahem.",
		WATERMELON = "Looks tasty!",
		WATERMELON_COOKED = "I'm not sure about grilled fruit...",
		WATERMELONHAT = "This feels silly...",
		WAXWELLJOURNAL = "I don't think we should play with that...",
		WETGOOP = "This should probably be disposed of.",
        WHIP = "Oooh, it makes so much noise!",
		WINTERHAT = "What a fuzzy little hat!",
		WINTEROMETER =
		{
			GENERIC = "It might be prudent to keep an eye on the temperature.",
			BURNT = "Oh no.",
		},

        WINTER_TREE =
        {
            BURNT = "Oh no.",
            BURNING = "Oh dear, not again.",
            CANDECORATE = "Happy Winter's Feast!",
            YOUNG = "Ohhh, how exciting! Ahem.",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "I need a pine cone for that.",
            BURNT = "Oh no.",
		},
        WINTER_ORNAMENT = "How festive!",
        WINTER_ORNAMENTLIGHT = "Is this one of those electric candles I've heard about?",
        WINTER_ORNAMENTBOSS = "This one should go someplace special.",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTGORGE = "The needlework on this is quite intricate.",

        WINTER_FOOD1 = "I half expect it to start running at any moment.", --gingerbread cookie
        WINTER_FOOD2 = "It's so hard to stop once you've eaten one.", --sugar cookie
        WINTER_FOOD3 = "Mmm, peppermint!", --candy cane
        WINTER_FOOD4 = "...Maybe someone else will take it?", --fruitcake
        WINTER_FOOD5 = "It's a cake that looks like a log!", --yule log cake
        WINTER_FOOD6 = "It's so sweet!", --plum pudding
        WINTER_FOOD7 = "Just the right amount of sweetness.", --apple cider
        WINTER_FOOD8 = "A hot cup of sweetness.", --hot cocoa
        WINTER_FOOD9 = "It's so sweet!", --eggnog

        KLAUS = "He doesn't look very jolly.",
        KLAUS_SACK = "It appears we need a key.",
		KLAUSSACKKEY = "It looks like a key, does it not?",
		WORMHOLE =
		{
			GENERIC = "What is that?",
			OPEN = "I don't think jumping in would be a good idea.",
		},
		WORMHOLE_LIMITED = "Is not looking very good.",
		ACCOMPLISHMENT_SHRINE = "A little dusty... Best give it a spring-cleaning!",
		LIVINGTREE = "Is it watching me?",
		ICESTAFF = "It's cold to the touch.",
		REVIVER = "I should share this with somebody!",
		SHADOWHEART = "Why does it make me feel so bad?",
        ATRIUM_RUBBLE =
        {
			LINE_1 = "It depicts an old civilization. The people look hungry and scared.",
			LINE_2 = "This tablet is too worn to make out.",
			LINE_3 = "Something dark creeps over the city and its people.",
			LINE_4 = "The people are shedding their skins. They look different underneath.",
			LINE_5 = "It shows a massive, technologically advanced city.",
		},
        ATRIUM_STATUE = "Eerily lifelike.",
        ATRIUM_LIGHT =
        {
			ON = "A truly unsettling light.",
			OFF = "Are these braziers?",
		},
        ATRIUM_GATE =
        {
			ON = "I don't think this was a good idea...",
			OFF = "It looks like it's missing pieces.",
			CHARGING = "It's gaining power...",
			DESTABILIZING = "We'd best not be around when it goes off.",
			COOLDOWN = "It needs time to recover.",
        },
        ATRIUM_KEY = "There is power emanating from it.",
		LIFEINJECTOR = "It's not so bad, if you close your eyes...",
		SKELETON_PLAYER =
		{
			MALE = "Oh no, %s. He was defeated by %s.",
			FEMALE = "Oh no, %s. She was defeated %s.",
			ROBOT = "Oh no, %s. They were defeated by %s.",
			DEFAULT = "Oh no, %s. Defeated by %s.",
		},
		HUMANMEAT = "Oh dear.",
		HUMANMEAT_COOKED = "Oh dear, but at least this should slow its decomposition.",
		HUMANMEAT_DRIED = "Oh dear, but at least this should slow its decomposition.",
		ROCK_MOON = "That rock came from the moon. It feels awfully familiar...",
		MOONROCKNUGGET = "That rock came from the moon. It feels awfully familiar...",
		MOONROCKCRATER = "I think it's missing a gem or something.",
		MOONROCKSEED = "There's science inside!",

        REDMOONEYE = "This one's got fire in its eye!",
        PURPLEMOONEYE = "Makes a good marker, but I wish it'd stop looking at me.",
        GREENMOONEYE = "It casts an envious glare over us.",
        ORANGEMOONEYE = "No one could get lost with that thing looking out for them.",
        YELLOWMOONEYE = "That ought to show everyone the way.",
        BLUEMOONEYE = "Such an icy gaze...",

        --Arena Event
        LAVAARENA_BOARLORD = "The grand master of this arena.",
        BOARRIOR = "We best not underestimate that one.",
        BOARON = "Leave it to me!",
        PEGHOOK = "Its spit is corrosive!",
        TRAILS = "He's got a strong arm on him.",
        TURTILLUS = "We have to keep that one from hiding!",
        SNAPPER = "This one's got bite!",
		RHINODRILL = "He's got a nose for this kind of work!",
		BEETLETAUR = "All that armor must be heavy.",

        LAVAARENA_PORTAL =
        {
            ON = "I shall take my leave now.",
            GENERIC = "That's how we got here. Hopefully how we get back, too.",
        },
        LAVAARENA_KEYHOLE = "It needs a key.",
		LAVAARENA_KEYHOLE_FULL = "That should do it.",
        LAVAARENA_BATTLESTANDARD = "Everyone, break the Battle Standard!",
        LAVAARENA_SPAWNER = "This is where those opponents are coming from.",

        HEALINGSTAFF = "It channels regenerative energy.",
        FIREBALLSTAFF = "It calls forth a meteor from above.",
        HAMMER_MJOLNIR = "It can break armor and disorient.",
        SPEAR_GUNGNIR = "I could do a quick charge with that.",
        BLOWDART_LAVA = "That's a weapon I could use from range.",
        BLOWDART_LAVA2 = "It uses a strong blast of air to propel a projectile.",
        LAVAARENA_LUCY = "Hello again, Miss Lucy.",
        WEBBER_SPIDER_MINION = "I guess they're fighting for us.",
        BOOK_FOSSIL = "This should bind our opponents in place for a spell.",
		LAVAARENA_BERNIE = "How do you do, Bernie?",
		SPEAR_LANCE = "Disappear and then strike from above\nto our opponent's lamentations!",
		BOOK_ELEMENTAL = "A powerful tome of summoning.",
		LAVAARENA_ELEMENTAL = "It's an avatar of phlogiston!",

   		LAVAARENA_ARMORLIGHT = "Light, but not particularly protective.",
		LAVAARENA_ARMORLIGHTSPEED = "The lightweight material grants the wearer better mobility.",
		LAVAARENA_ARMORMEDIUM = "This ought to prevent grievous harm from befalling the wearer.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "That could help me hit a little harder.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "A weave of magic replenishes the wearer's will.",
		LAVAARENA_ARMORHEAVY = "I could really take a hit in that thing!",
		LAVAARENA_ARMOREXTRAHEAVY = "An armor as steady as stone!",

		LAVAARENA_FEATHERCROWNHAT = "A weak enchantment is present on this wreath.",
        LAVAARENA_HEALINGFLOWERHAT = "This will amplify the effects of incoming healing magic.",
        LAVAARENA_LIGHTDAMAGERHAT = "It lends its weight into my strikes.",
        LAVAARENA_STRONGDAMAGERHAT = "It lends its heft into my strikes.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "This strengthens the wearer's restorative magicks.",
        LAVAARENA_EYECIRCLETHAT = "It seems to enhances magical abilities.",
        LAVAARENA_RECHARGERHAT = "Those crystals will quicken my abilities.",
        LAVAARENA_HEALINGGARLANDHAT = "This garland will restore a bit of my vitality.",
        LAVAARENA_CROWNDAMAGERHAT = "It lends its might into my strikes.",

		LAVAARENA_ARMOR_HP = "A little extra armor never hurt.",

		LAVAARENA_FIREBOMB = "It smells like brimstone.",
		LAVAARENA_HEAVYBLADE = "Finally! A weapon able to endure my strength.",

        --Quagmire
        QUAGMIRE_ALTAR =
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of eating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "It seems to have dried up a long time ago.",

        QUAGMIRE_HOE = "Leave it to me!",

        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "The turnip is now cooked.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_GARLIC = "A couple cloves of garlic.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "Perfectly roasted.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_POTATO = "One of the more dependable vegetables.",
        QUAGMIRE_POTATO_COOKED = "The potato may be eaten now.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_TOMATO = "A pleasantly plump, juicy tomato.",
        QUAGMIRE_TOMATO_COOKED = "That just made it squishier...",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "We can grind it into flour.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",

		QUAGMIRE_SALMON = "Ooh! Fresh fish!",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table!",
		QUAGMIRE_CRABMEAT = "Pinchy!",
		QUAGMIRE_CRABMEAT_COOKED = "Perfect with a bit of butter.",
        QUAGMIRE_POT = "This one holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
		QUAGMIRE_SUGARWOODTREE =
		{
			GENERIC = "It's a big, pink tree.",
			STUMP = "It has been chopped.",
			TAPPED_EMPTY = "Sap collection is under way.",
			TAPPED_READY = "Sap's ready!",
			TAPPED_BUGS = "The ants are drawn to the sap.",
			WOUNDED = "This tree has seen better days.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB =
		{
			GENERIC = "It smells kind of like pepper.",
			PICKED = "I can't get anymore from that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Processed and ready for cooking.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "There is no salt, yet.",
		},

		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE =
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "It is the key to something precious.",
		QUAGMIRE_KEY_PARK = "I believe this is for the park.",
        QUAGMIRE_PORTAL_KEY = "Quite an elaborate key.",


		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "A cluster of edible mushrooms.",
			PICKED = "I don't think they'll grow back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",


		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Nothing more to pray for.",
        QUAGMIRE_RUBBLE_PUBDOOR = "A door that leads nowhere.",
        QUAGMIRE_RUBBLE_ROOF = "It has collapsed.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "Looks like something destroyed it.",
        QUAGMIRE_RUBBLE_BIKE = "Beyond repair.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "Something happened here.",
            "Something destroyed this town.",
            "What caused this city to crumble?",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something has happened here.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Its hearth no longer has a home.",
        QUAGMIRE_MERMHOUSE = "Seclusion has not been kind to it.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's crumbling.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "It's seen better days.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "How do you do, sir?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "They don't seem very afraid of people.",

        QUAGMIRE_PORTAL = "Where are we?",
        QUAGMIRE_SALTROCK = "We need to grind it before we can use it.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "Oh no.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "The exact thing to placate it.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },

        QUAGMIRE_FERN = "This fern seems edible.",
        QUAGMIRE_FOLIAGE_COOKED = "I should mix it in with something else.",
        QUAGMIRE_COIN1 = "A coin of some value.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "I shouldn't question its origins.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "No longer edible I'm afraid.",
        QUAGMIRE_SEEDPACKET = "An envelope of potential crops.",

        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Hmmm, what shall we make next?",
        QUAGMIRE_POT_SYRUP = "It needs sap.",
        QUAGMIRE_POT_HANGER = "Traditionally one hangs a pot from it.",
        QUAGMIRE_POT_HANGER_ITEM = "It needs to be set up in a firepit.",
        QUAGMIRE_GRILL = "Perhaps some barbeque is in order!",
        QUAGMIRE_GRILL_ITEM = "It needs to be on the ground.",
        QUAGMIRE_GRILL_SMALL = "Smaller than normal, but it'll do.",
        QUAGMIRE_GRILL_SMALL_ITEM = "I should set it up over the firepit.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "I'll need to bake it.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "It's kind of small.",
        QUAGMIRE_PLATE_SILVER = "I did miss proper dishware.",
        QUAGMIRE_BOWL_SILVER = "Refined dishware.",
        QUAGMIRE_CRATE = "Kitchen stuff.",

        QUAGMIRE_MERM_CART1 = "Let's see what they have today.", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "Well what do we have here?", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Quite an interesting sculpture.",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Nice stonework.",
        QUAGMIRE_PARK_OBELISK = "I wish I could read the writing.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Now I may enter the park.",
            LOCKED = "I need a key to enter.",
        },
        QUAGMIRE_PARKSPIKE = "That looks sharp.",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",

        QUAGMIRE_GOATMUM = "Greetings, ma'am. Would you be willing to trade?",
        QUAGMIRE_GOATKID = "Greetings. How are you today?",
        QUAGMIRE_PIGEON =
        {
            DEAD = "Oh dear, they've expired.",
            GENERIC = "Alas, I haven't got any crumbs for you.",
            SLEEPING = "It's asleep, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "It's seen better days.",
        QUAGMIRE_SLAUGHTERTOOL = "If I must.",

        QUAGMIRE_SAPLING = "That needs time to grow back. Time I don't have.",
        QUAGMIRE_BERRYBUSH = "Those berries need time to grow back. Time I don't have.",

        QUAGMIRE_ALTAR_STATUE2 = "A gruesome gargoyle.",
        QUAGMIRE_ALTAR_QUEEN = "Impressive in scope.",
        QUAGMIRE_ALTAR_BOLLARD = "Fine metalwork.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "A little civility.",

        --v2 Winona
        WINONA_CATAPULT =
        {
        	GENERIC = "She's made a sort of automatic defense system.",
        	OFF = "It needs to be powered.",
        	BURNING = "Oh no!",
        	BURNT = "Oh no.",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "What an ingenious idea!",
        	OFF = "It needs to be powered.",
        	BURNING = "Oh no!",
        	BURNT = "Oh no.",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "It's a kind of electrical box.",
        	LOWPOWER = "It's getting low on power.",
        	OFF = "It needs to be powered.",
        	BURNING = "Oh no!",
        	BURNT = "Oh no.",
        },
        WINONA_BATTERY_HIGH =
        {
        	GENERIC = "This one draws power from gemstones.",
        	LOWPOWER = "It'll turn off soon.",
        	OFF = "It needs to be powered.",
        	BURNING = "Oh no!",
        	BURNT = "Oh no.",
        },

        --Wormwood
        COMPOSTWRAP = "Those are some large droppings.",
		POISONBALM = "I do love not being poisoned.",
        ARMOR_BRAMBLE = "I think Wormwood made it.",
        TRAP_BRAMBLE = "It's got really sharp thorns.",

        BOATFRAGMENT03 = "Not much left of it.",
        BOATFRAGMENT04 = "Not much left of it.",
        BOATFRAGMENT05 = "Not much left of it.",
		BOAT_LEAK = "I should patch that up before we sink.",
        MAST = "Avast! A mast!",
        SEASTACK = "It would be easy to wreck a vessel on one of those.",
        FISHINGNET = "I will catch many tasty fish!",
        ANTCHOVIES = "It's a squirmy little sea bug.",
        STEERINGWHEEL = "Ship steering is no easy task.",
        ANCHOR = "I can drop it to keep the boat in place.",
        BOATPATCH = "Just in case of disaster.",
        DRIFTWOOD_TREE =
        {
            BURNING = "That driftwood's burning!",
            BURNT = "Oh no.",
            CHOPPED = "There might still be something worth digging up.",
            GENERIC = "A dead tree that washed up on shore.",
        },

        DRIFTWOOD_LOG = "It floats on water.",

        MOON_TREE =
        {
            BURNING = "The tree is burning!",
            BURNT = "Oh no.",
            CHOPPED = "That was a pretty thick tree.",
            GENERIC = "I didn't know trees grew on the moon.",
        },
		MOON_TREE_BLOSSOM = "It fell from the moon tree.",

        MOONBUTTERFLY =
        {
        	GENERIC = "How graceful!",
        	HELD = "I've got you now.",
        },
		MOONBUTTERFLYWINGS = "What can I do with these?",
        MOONBUTTERFLY_SAPLING = "It's a small moon tree.",
        ROCK_AVOCADO_FRUIT = "I think I need to open it up first.",
        ROCK_AVOCADO_FRUIT_RIPE = "It's ripe enough to eat now.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "It's actually soft enough to eat now.",
        ROCK_AVOCADO_FRUIT_SPROUT = "I think I should plant this.",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "Its fruit growing days are over.",
			WITHERED = "It's not going to grow back while it's so hot.",
			GENERIC = "It's a bush... from the moon!",
			PICKED = "It'll take awhile to grow more fruit.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "It looks a bit odd.",
			BURNING = "Oh no.",
		},
        DEAD_SEA_BONES = "What curious skeletal structures.",
        HOTSPRING =
        {
        	GENERIC = "So toasty and warm!",
        	BOMBED = "Ohhh, how exciting! Ahem.",
        	GLASS = "The top is solid glass.",
			EMPTY = "The spring will replenish itself in good time.",
        },
        MOONGLASS = "It's very sharp.",
		MOONGLASS_CHARGED = "It feels almost alive, somehow.",
        MOONGLASS_ROCK = "I wonder if it has any special properties.",
        BATHBOMB = "It smells quite nice, if I'm honest.",
        TRAP_STARFISH =
        {
            GENERIC = "Do starfish usually have so many teeth?",
            CLOSED = "It tried to bite me!",
        },
        DUG_TRAP_STARFISH = "It is no longer a danger for now.\nPerhaps I can relocate it elsewhere.",
        SPIDER_MOON =
        {
        	GENERIC = "Oh dear. The moon mutated it.",
        	SLEEPING = "It's asleep.",
        	DEAD = "Good riddance.",
        },
        MOONSPIDERDEN = "This is the source of the moon spider infestation..",
		FRUITDRAGON =
		{
			GENERIC = "What a silly little creature!",
			RIPE = "Were you always that colourful?",
			SLEEPING = "It's asleep.",
		},
        PUFFIN =
        {
            GENERIC = "What a jolly looking bird!",
            HELD = "It's a bit awkward carrying such a large bird around with me...",
            SLEEPING = "It's asleep.",
        },

		MOONGLASSAXE = "It seems more effective at felling trees!",
		GLASSCUTTER = "I should utilize this with consideration.",

        ICEBERG =
        {
            GENERIC = "Let's steer clear of that.",
            MELTED = "It's completely melted.",
        },
        ICEBERG_MELTED = "It's completely melted.",

        MINIFLARE = "I can light it to let everyone know I'm here.",
        MEGAFLARE = "I can lure adversaries to a place of my choosing.",
		
		MOON_FISSURE =
		{
			GENERIC = "I think it's whispering to me.",
			NOLIGHT = "Wonder how far down it goes.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "It wants to be made whole again.",
            GENERIC = "Hm? What did you say?",
        },

        MOON_ALTAR_IDOL = "I feel compelled to carry it somewhere.",
        MOON_ALTAR_GLASS = "It doesn't want to be on the ground.",
        MOON_ALTAR_SEED = "Where shall I take you?",

        MOON_ALTAR_ROCK_IDOL = "There's something trapped inside.",
        MOON_ALTAR_ROCK_GLASS = "There's something trapped inside.",
        MOON_ALTAR_ROCK_SEED = "There's something trapped inside.",

        MOON_ALTAR_CROWN = "Don't worry, I'll get you where you need to go.",
        MOON_ALTAR_COSMIC = "I know where you need to be.",

        MOON_ALTAR_ASTRAL = "You are whole again.",
        MOON_ALTAR_ICON = "I'll take you to the others.",
        MOON_ALTAR_WARD = "Indeed, I really am the best for helping you out.",		
		
        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I haven't been to sea before. How exciting!",
            BURNT = "Oh no.",
        },
        BOAT_ITEM = "It will allow us to go on the water.",
        BOAT_GRASS_ITEM = "Its durability is questionable, but it will do for now.",
        STEERINGWHEEL_ITEM = "A necessity should we want to steer our boat.",
        ANCHOR_ITEM = "It will allow us to create an anchor for our ships.",
        MAST_ITEM = "I suppose you can't really call it \"sailing\" if you don't have a sail.",
        MUTATEDHOUND =
        {
        	DEAD = "Good riddance.",
        	GENERIC = "Is that an undead hound?",
        	SLEEPING = "It's asleep.",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "Good riddance.",
			GENERIC = "Something about this place has made the creature go quite wrong.",
			SLEEPING = "It's asleep.",
		},
        CARRAT =
        {
        	DEAD = "Oh no.",
        	GENERIC = "That's the liveliest carrot I've ever seen.",
        	HELD = "Are carrots supposed to have legs?",
        	SLEEPING = "It's asleep.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "It's seaweed.",
            PICKED = "There's no more seaweed here.",
        },
		BULLKELP_ROOT = "I can plant it in deep water.",
        KELPHAT = "I'd rather keep to my headdress instead.",
		KELP = "It appears edible, but I should cook it first.",
		KELP_COOKED = "A little better, but perhaps\nI should add it into a dish instead.",
		KELP_DRIED = "Crunchy and salty! A nice, light snack!",

		GESTALT = "They are whispering to me...",

		COOKIECUTTER = "I don't like the way it's looking at my boat...",
		COOKIECUTTERSHELL = "That thing was well protected.",
		COOKIECUTTERHAT = "At least my hair will stay dry.",
		SALTSTACK =
		{
			GENERIC = "Are those natural salt formations?",
			MINED_OUT = "The salt has already been harvested.",
			GROWING = "I guess they just form that way naturally.",
		},
		SALTROCK = "I can use this to improve the freshness of our ingredients.",
		SALTBOX = "Salt is great for preserving your supplies.",

        MALBATROSS = "Uh, nice birdy?",
        MALBATROSS_FEATHER = "It won't be needing these anymore.",
        MALBATROSS_BEAK = "I don't think its owner will be missing it.",
        MAST_MALBATROSS_ITEM = "It's lighter than it looks.",
        MAST_MALBATROSS = "Spread my wings and sail away!",
		MALBATROSS_FEATHERED_WEAVE = "This fabric is light as a feather!",

        GNARWAIL =
        {
            GENERIC = "Hopefully it can be reasoned with.",
            BROKENHORN = "I believe you may have deserved that.",
            FOLLOWER = "Do you really wish to follow me?",
            BROKENHORN_FOLLOWER = "I'm sure it will grow back in time.",
        },
        GNARWAIL_HORN = "I'm sure I can use this for something.",
		
        WALKINGPLANK = "So, who are we gonna make walk it?",
        WALKINGPLANK_GRASS = "So, who are we gonna make walk it?",
        OAR = "Manual ship acceleration.",
		OAR_DRIFTWOOD = "Manual ship acceleration.",

		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "This belongs to Warly.",
			DONE = "Mmmmm! It's ready to eat!",

			COOKING_LONG = "It's got a bit to go before it's ready.",
			COOKING_SHORT = "Almost done!",
			EMPTY = "In need of ingredients.",
        },

        PORTABLEBLENDER_ITEM = "Quite a lively cooking instrument.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "A little extra flavour never hurt anyone!",
            DONE = "The flavoring is ready for use.",
        },
        SPICEPACK = "This should keep my provisions from spoiling!",
        SPICE_GARLIC = "It's good for you!",
        SPICE_SUGAR = "Delightfully sweet!",
        SPICE_CHILI = "Best used in minute amounts.",
        SPICE_SALT = "Just a pinch will do.",
        MONSTERTARTARE = "I'm not too keen on putting that in my mouth.",
        FRESHFRUITCREPES = "So light and airy!",
        FROGFISHBOWL = "It tastes better than it looks.",
        POTATOTORNADO = "How creative!",
        DRAGONCHILISALAD = "I hope I can handle the spice level.",
        GLOWBERRYMOUSSE = "Oooh, it's glowing!",
        VOLTGOATJELLY = "It's shockingly delicious!",
        NIGHTMAREPIE = "It's a little spooky.",
        BONESOUP = "Extremely savory. I wouldn't mind seconds!",
        MASHEDPOTATOES = "I've heard cooking is basically chemistry. I should try it.",
        POTATOSOUFFLE = "I forgot what good food tasted like.",
        MOQUECA = "Thank you, Mister Warly!",
        GAZPACHO = "It's very healthy!",
        ASPARAGUSSOUP = "A nice warm bowl of soup.",
        VEGSTINGER = "Oh my, its spicy! And it reminds me of a certain deaconess.",
        BANANAPOP = "Refreshing on a hot day!",
		CALIFORNIAROLL = "Looks a bit fancy, but I'll give it a try!",
        CEVICHE = "Oddly refreshing!",
		SEAFOODGUMBO = "...is leaving the bones in really necessary?",
		SURFNTURF = "A very balanced meal!",
		SHARKFINSOUP = "I may have meddled with a delicate ecosystem to make this...",
		LOBSTERDINNER = "No place is too remote for some fine dining!",
		LOBSTERBISQUE = "Ah, I do enjoy the finer things.",
        SALSA = "I guess I could spare some time for a quick snack...",
        PEPPERPOPPER = "Just a tad spicy for me!",

        TURNIP = "It's a raw turnip.",
        TURNIP_COOKED = "The turnip is now cooked.",
        TURNIP_SEEDS = "I think I should plant these.",

        GARLIC = "A couple cloves of garlic.",
        GARLIC_COOKED = "Perfectly browned.",
        GARLIC_SEEDS = "I think I should plant these.",

        ONION = "Looks crunchy.",
        ONION_COOKED = "Perfectly roasted.",
        ONION_SEEDS = "I think I should plant these.",

        POTATO = "One of the more dependable vegetables",
        POTATO_COOKED = "The potato may be eaten now.",
        POTATO_SEEDS = "I think I should plant these.",

        TOMATO = "A pleasantly plump, juicy tomato.",
        TOMATO_COOKED = "That just made it squishier...",
        TOMATO_SEEDS = "I think I should plant these.",

        ASPARAGUS = "A vegetable.",
        ASPARAGUS_COOKED = "Smells surprisingly good.",
        ASPARAGUS_SEEDS = "I think I should plant these.",

        PEPPER = "Nice and spicy.",
        PEPPER_COOKED = "An especially hot pepper.",
        PEPPER_SEEDS = "I think I should plant these.",

        WEREITEM_BEAVER = "Ooooh, what a fun little trinket!",
        WEREITEM_GOOSE = "Oh dear. This is certainly looks bizarre.",
        WEREITEM_MOOSE = "What a bizarre appearance!",

        MERMHAT = "This seems rather... fishy.",
        MERMTHRONE =
        {
            GENERIC = "It looks fit for a swamp king!",
            BURNT = "Oh no.",
        },
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "May I be of assistance, Miss Wurt?",
            BURNT = "Oh no.",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "It's actually kind of cute!",
            BURNT = "Oh no.",
        },

        MERMWATCHTOWER_REGULAR = "They seem happy to have found a king.",
        MERMWATCHTOWER_NOKING = "A royal guard with no Royal to guard.",
        MERMKING = "Your Majesty!",
        MERMGUARD = "They stand on guard for the king.",
        MERM_PRINCE = "They operate on a first-come, first-sovereigned basis.",

    },

    DESCRIBE_GENERIC = "It's a... thing.",
    DESCRIBE_TOODARK = "It's too dark to see!",
    DESCRIBE_SMOLDERING = "That thing is about to catch fire.",
    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Mmm. Beaky.",
    },
}
