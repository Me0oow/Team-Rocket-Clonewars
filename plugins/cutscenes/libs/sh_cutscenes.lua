
local PLUGIN = PLUGIN
-- this needs to be here because nutscript likes to load things depth first sometimes
--color = Color(255,0,0), -for adding color to subtitles
--sound = "soundpath", -for adding sound to subtitles/scenes
--songFade = true, -add this to the last scene to add songfadeout
PLUGIN.cutscenes = PLUGIN.cutscenes or {}

--this is a crude test cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1010457586874716201/1175388978111844402/image_3.png?ex=656b0d4a&is=6558984a&hm=8210a6af2ae722ac9267726d9c83347e53023a1209427332c7a02c2011498378&=", -- The image to be displayed (1920 x 810)
        sound = "https://cdn.discordapp.com/attachments/1010457586874716201/1175369394638041149/Y2mate.mx_-_501st_Journal_-_Geonosis__Attack_of_the_Clones_128_kbps.mp3?ex=656afb0c&is=6558860c&hm=c27d6aa26e346c71aa6a18a173c9e95f870558c0c691c89993a374948ba577f5&", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "Cutscene", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 3, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(141, 181, 214),
                text = "Mein erster Tag als Soldat bei der 501st.....",
                font = "Cutscene",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 3,
            },
            {
                color = Color(141, 181, 214),
                text = "Es war voller Hitze, Sand und Chaos..",
                font = "Cutscene",
                sound = "", -- The sound it plays when this text starts
                duration = 3,
            },
			{
                color = Color(141, 181, 214),
                text = "Ganz und gar nicht wie die Simulationen, die wir auf dem Kamino hatten.", -- Subtitle text
                font = "Cutscene", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 3, -- How long it stays on the screen before the next thing happens
            },
                        {
                color = Color(141, 181, 214),
                text = "Natürlich war es für uns alle ungefähr gleich, nicht wahr??", -- Subtitle text
                font = "Cutscene", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 4, -- How long it stays on the screen before the next thing happens
            },
                        {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1010457586874716201/1175389324175487056/image_5.png?ex=656b0d9c&is=6558989c&hm=e93df06f527a21db8862e51dc2a0961243862d5642516dfbf23886cf0b3d4487&=", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(141, 181, 214),
                text = "All die Zeit, all die Jahre der Ausbildung ... haben uns nicht wirklich auf all das Geschrei, all das Blut vorbereitet.и.", -- Subtitle text
                font = "Cutscene", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 5, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(141, 181, 214),
                text = "Ehrlich gesagt erstaunt es mich, dass wir überhaupt die erste Stunde überlebt haben, geschweige denn einen Tag..",
                font = "Cutscene",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 8,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
}

PLUGIN.cutscenes["geonosis"] = cutscene


local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1045426785451515974/image.png", -- The image to be displayed (1920 x 810)
        sound = "https://cdn.discordapp.com/attachments/1035635227508346931/1052046507454500944/Sicario_-_The_Beast_Remix_by_D-AF.mp3", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "vehicles/v8/skid_lowfriction.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The flight to High Top Amusement Park on the periphary of Detroit, Michigan was a short one. The fleet of black hawks flew fast and low, speeding toward the target.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12.5,
            },
            {
                color = Color(255,255,255),
                text = "The members of CRUCIBLE-5 rappel out of the helicopters as they hover over the parking lot, landing with a thud on the pavement.",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/705648229085216772/1051956130710032514/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "It was immediately clear that entire amusement park was indeed quiet. Despite the fact, the distant shouts of playful children could be heard in the distance.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 11,
            },
            {
                color = Color(255,255,255),
                text = "CRUCIBLE-5 eventually assembles outside the carnival, inserting on their first operation when ready...",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/705648229085216772/1051956131183997058/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "OPERATION EARLY BIRD",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 20,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["introcarnival"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1045426349394886789/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "don/bc/phone/vox_phone_ring.mp3", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'Throughout history, anomalous entities, people, and places were always there. Different civilizations have coped with their existence in a variety of ways.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
            },
            {
                color = Color(255,255,255),
                text = "'Some revered them as gifts from their gods, others as demonic forces to be fought. Some even believed them to be tools of power, to be wielded against their enemies.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "'Sometime around the turn of the twentieth century, when globalization began to creep across the world the presence of anomalous entities around the world spiked dramatically. The cause for this is currently unknown.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "'Various world governments, bankers, hedge funds, and mercenaries took it upon themselves to form an organization with the mission of keeping the paranormal away from the civilian world, in an effort to preserve society - therein sacrificing their own innocence to the anomalous world in the name of preserving those outside of it.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 19, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "'This organization was known as the 'SCP Foundation.' This Foundation kept to their mission goal.. for a time, obtaining the cooperation of nearly every major world government as a global shield against the anomalous..'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 19, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1045427344036339832/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'The specifics of what happened next are somewhat unclear, even to our most well informed scholars. The start of World War I was closely linked to the occult community. It is believed that the founding members of the Foundation found opposition in Europe, challengers to their almost unitary global authority on all things anomalous. The Great War followed.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 20,
            },
            {
                color = Color(255,255,255),
                text = "'With their opposition put down, the Foundation - by means of proxy and co-opting Western governments - retained control of almost all of Europe and her colonies.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 15,
            },
			{
                color = Color(255,255,255),
                text = "'This control would continue for some decades. It was during this period of absolute control that the Foundation grew complacent, and those at the top began flirting with the idea of using some of the more... practical entities discovered in their pursuits for personal gain.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 24,
            },
            {
                color = Color(255,255,255),
                text = "'For no reason more than selfish gain, the leaders of the Foundation allowed themselves to be corrupted by several artifacts and entities.. granting them powers and abilities most would consider unnatural.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 15, -- How long it stays on the screen before the next thing happens   
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens   
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1045428256536531105/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'Sometime during the 1930s, this farce of stability and complacence came to an end. In the ultimate act of hypocrisy, the leadership revoked all access to using anomalies to further the goals of the Foundation. A complete contradiction to their own covert activities.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "'This act in service of their own private agendas was met with resounding dissent from internal forces. Of these dissidents, their primary executors stood the tallest - the personal task force of the Foundation's rulers.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "'This mobile task force, along with... Other forces in the Foundation broke off from the central organization, and sought refuge in the few corners of the world that were not yet completely dominated by their former overseers.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 16, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1045426545277272074/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'In a swift act of rebellion, those that broke off took control of various political regimes across the globe and launched a global offensive on Foundation primacy. This culminated historically into what is now known as World War II.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
            },
            {
                color = Color(255,255,255),
                text = "'Throughout the war, various occult skirmishes ravaged societies, and alliances were struck between burgeoning powers. The lines in the sand for what we know as modern day groups of interest were drawn.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 16,
            },
            {
                color = Color(255,255,255),
                text = "'By the end of it all, the men of this task force lost. They were scattered deeper into places across the globe, or even beyond the globe that the Foundation dare not look.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 18, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "''", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens	
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1045428114345435186/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'The second half of the twentieth century brought a period of uncertainty in the occult community. There were now groups besides the Foundation in the world that held dominance in certain regions, their sole mastery of the paranormal a thing of the past.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 18,
            },
            {
                color = Color(255,255,255),
                text = "'All the while, the remnants of the task force from earlier in the century drew power and licked their wounds. In the hopes of rising up once again against their former masters, in the name of preventing yet another global war, and preventing the Foundation from once again holding humanity in its palm.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 18,
            },
            {
                color = Color(255,255,255),
                text = "'Behind closed doors, the Cold War was shaped out of fear of yet another anomalous catastrophe from occurring. These new groups were uncertain as to how another conflict with their own skin in the game would happen, and did all they could to avoid it.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 18, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["cireveal"] = cutscene


local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1053851714446438490/image.png", -- The image to be displayed (1920 x 810)
        sound = "https://cdn.discordapp.com/attachments/1035635227508346931/1054201783058182184/Mr_Robot___Soundtrack___betterthanm0rphine.aac.mp3", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "vehicles/v8/skid_lowfriction.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The flight in the blacked out helicopters took the members of CRUCIBLE-5 into downtown Detroit once again. Violating several national air space laws, the deployment team circles the towering metropolitan hospital.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12.5,
            },
            {
                color = Color(255,255,255),
                text = "Even from the far off distance, those in the helicopters would hear gunshots and screaming heard from the interior of Henry Ford Hospital. They were working on limited time.",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1053851714777776198/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Hovering over the helipads, the members of the MTF unit rappel down, landing on the rooftop.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 11,
            },
            {
                color = Color(255,255,255),
                text = "CRUCIBLE-5 spreads out atop the roof of the building. They knew the stakes. This time, civilian lives were on the line.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1029971494530469958/1053851715121721404/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "OPERATION SCALPEL",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 20,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["introhospital"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1055250488179818516/image.png", -- The image to be displayed (1920 x 810)
        sound = "https://cdn.discordapp.com/attachments/1035635227508346931/1062137195449810944/Conspiracy_Pt._2.mp3", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "vehicles/v8/skid_lowfriction.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The Brotherhood launched their attack well in advance of CRUCIBLE-5's all out assault on The Agency's St. Louis office. The entire city was swarming with federal officials, armed and ready for trouble.",
                font = "ixMediumFont",
                sound = "ambient/explosions/exp3.wav", -- The sound it plays when this text starts
                duration = 12.5,
            },
            {
                color = Color(255,255,255),
                text = "Despite this, the men and women of CRUCIBLE-5 loaded into several armored vans, and plowed straight through the front doors of the large, elaborately decorated Midwest HQ of the Agency.",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "Strapped into the back seats, they'd feel a massive crash, followed by falling. Finally, another massive impact was felt, followed by exterior screaming and gunshots. They had landed in the heart of the facility as promised.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "ambient/explosions/explode_2.wav", -- The sound it plays when this text starts
                duration = 13, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "https://cdn.discordapp.com/attachments/1035635227508346931/1042573485064593508/Republic_Cruiser_Siren-Alarm_5_min.mp3", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1053234748098613278/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Emerging from the vehicles, it became readily apparent that the Brotherhood of the Third Eye had already made their mark on this area of the complex. Bodies and other signs of a previous shootout littered the floor.",
                font = "ixMediumFont",
                sound = "ambient/explosions/battle_loop2.wav", -- The sound it plays when this text starts
                duration = 11,
            },
            {
                color = Color(255,255,255),
                text = "The mission was clear for CRUCIBLE-5: confirm the status of and rescue their colleagues - don't let any members of The Agency stand in their way.",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1053235380259917924/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "OPERATION: CAPITAL PUNISHMENT",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 20,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["introagency"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/705648229085216772/1042496321791217824/unknown.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The luxury passenger jet began its descent over the United Kingdom, landing in a private airport outside of London. As the wheels made contact with the tarmac, you would begin to feel your heart sink - this mission was crucial to the Insurgency, and would go on to shape relations in the coming months.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
            },
            {
                color = Color(255,255,255),
                text = "Night had already fallen on London by the time the vehicles had arrived at the Gala. You were led into the extravagent Dark estate littered with helping staff. Dozens of luxury vehicles were parked outside, the rich and 1% had already made it inside.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1059277008254804028/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Cries of grief, as well as fits of laughter erupted in the halls. Immediately, the attendees of James Dark's funeral turned to meet your gaze. A late arrival to such an event would be viewed as impolite to say the least.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 11,
            },
            {
                color = Color(255,255,255),
                text = "Finally, you were screened by security and allowed access into the deeper parts of the ceremony.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1063522578519572580/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "THE FUNERAL",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 20,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["introgala"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1064658268510752889/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Boarding the modified passenger jet, the men and women set out on one of the most important missions of their lives. Several hours passed before they crossed into Kentucky air space.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
            },
            {
                color = Color(255,255,255),
                text = "The cargo hold opened, billowing wind filling your ears as you clutched a nearby handle. You had little time to soak in the view however, as the sound of an explosion was heard off one of the wings, followed by more. The entire airplane began shaking violently.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1064658758195757086/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The cries of Overlord came over the radio chatter, the man on the other end shouting. 'CRUCIBLE CELL? CRUCIBLE CELL, DO YOU COPY? YOU'VE ENCOUNTERED UNEXPECTED-'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "The man was cut short, the comms going out as another strike hit the side of the plane. Only this one was far worse.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1064658890261803038/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The entire plane was struck by an unknown anti aircraft weapon, beginning its rapid descent toward the ground. You had no time to react, and only a few of your colleagues were able to leap for safety into the open air.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "As you began rapidly plumetting toward the Earth, you caught periodic glimpses of outdated soviet fighter jets going toe-to-toe with state of the art USAF hardware.",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 6,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1064659042896724028/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "OPERATION: CRUCIBLE",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 25,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["introarmory"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1039700020380835881/1065877715338657912/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "BEST STRATEGIST - NOBODY",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "BEST CHARACTER - BART",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "MOST EFFORT - KALIGNI", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 10, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1035937080586535013/1064356328090390558/Screenshot_from_2023-01-15_00-26-23.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "BIGGEST BLUNDER - BART",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "DUMBEST PLAYER - ROBERT & RBO (TIED)",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1039700020380835881/1065879356708241428/82186279ffe857ba72bbfaf0fc552322.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "BEST DEPARTMENT - RESEARCH",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "BEST MORALS - FUBAR",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1039700020380835881/1065879839749451856/261b6408bdabed8c48227a6fa46dcf08.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "MOST INJURED - BOXMOD",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "FIRST BURNT GOI - SENOR SAUCE",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1065858823992131634/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "MOST LETHAL - VENTED",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 25,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1039700020380835881/1065876778587017287/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "MOST PLOT HOOKS MISSED - ROMERO",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1039700020380835881/1065877626562039898/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "MOST PKS - BOKSER",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens'
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1035937080586535013/1064372931024654406/26acd248e05189de6c3ba7062acb4f1f.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "BIGGEST EGO - CARNIFEX",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1065848570688852028/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "SPECIAL THANKS TO - RYAN GEARPERMER",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 15,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1035937080586535013/1064393822232133682/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "ACT I CONCLUDED",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 25,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["act1credits"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1053237013505118239/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Crucible Cell ushered themselves out of the region through various means. Somewhere across the country, a command room was abuzz with screaming, only to be interrupted with an announcement. ",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
            },
            {
                color = Color(255,255,255),
                text = "'SIR - WE'VE DETECTED A WARHEAD DETONATION IN-'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "'Oh god...'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 7, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1053237176030216304/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Those staring at the remains of the Armory are temporarily blinded by a surge of white energy that began to engulf the entire valley. A combination of nuclear hellfire and anomalous blue energy consumed anyone remaining inside, or in the outlying regions.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 11,
            },
            {
                color = Color(255,255,255),
                text = "In an instant, hundreds of lives were snuffed out as the blast continued to expand. The distance from the detonation grew greater however, Crucible Cell escaping certain death.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1053237358968963152/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "OPERATION CRUCIBLE - STATUS UNKNOWN",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 20,
            },
            {
                color = Color(255,255,255),
                text = "ACT I CONCLUDED",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 25,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["act1ending"] = cutscene

local cutscene = {
    {
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1076106398393454702/image.png", -- The image to be displayed (1920 x 810)
        sound = "https://cdn.discordapp.com/attachments/1035635227508346931/1035635465681895474/THE_PROTAGONIST.mp3", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "don/aw/admin/socfail1.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
            {
                color = Color(255,255,255),
                text = "Well, you failed. Take a look at that. Do you see it?",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "It's called FAILURE...",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 6,
            },
            {
                color = Color(255,255,255),
                text = "Nothing is safe...", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 5, -- How long it stays on the screen before the next thing happens
            },
			{
			    color = Color(255,255,255),
                text = "Nothing is sacred...", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 5, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1075876767140679890/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens       
            },
            {
                color = Color(255,255,255),
                text = "We're fucked...",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 11,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["introfailure"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/809801042291458078/1094382273522040962/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Crucible embarks on the few transports sent by their sister units to gather them. They pass over the desolate countryside of a nation scarred by natural calamity and the blackened remains of war. Passing from all vestiges of civilization, they fly deep into the desert.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
            },
            {
                color = Color(255,255,255),
                text = "''",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/809801042291458078/1094382932816318505/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Amidst the sands was a vast, ringed encampment. Hundreds, perhaps thousands were gathered below in makeshift tents, outnumbered only by the weapons of war and equipment alongside them. ",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "Regiments of iron men serving the Black Cog, creatures of the Cabal and a small contingent of zealot soldiers from the Horizon Initiative awaited them on the ground.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/809801042291458078/1094383122549850112/image.png?width=1621&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "From the sand rose three colossal craft, rings of black iron. Joined at the flanks by airborne demons and Cabalite creations, these vessels were to serve as arks for the forces below. Crucible ascended to the rusted bowels of the apparent flagship of these craft, a lockstep battalion of Cog janissaries at their heels.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 15,
            },
            {
                color = Color(255,255,255),
                text = "As the craft lurched through the desert, it would soon begin to shake and come under anomalous gunfire. The battle for the site of the alleged SCP-001 had begun.",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 15,
            },
            {
                color = Color(255,255,255),
                text = "OPERATION COLD STEEL", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 20, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["introcoldsteel"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096023686953304136/image.png?width=784&height=170", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The hijacked jet liner passed over the Mediterranean Sea, soaring into the African interior in dogged pursuit of the Foundation craft.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "Crucible Cell maintained uneasy control over the hundreds of terrified passengers trapped within, preparing jump gear and weapons in tense peace.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096024141032849468/image.png?width=784&height=252", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The screech of jets from Talon Cell broke the wait, the target closing. Crucible was hastily directed to the cargo hold, with Director Quinn barricading himself in the cockpit as the cell prepared for a penultimate deployment.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "Quinn's crackled voice could be heard over comms chatter 'God speed, Crucible Cell. Make us proud. Make yourselves proud.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096023031710752819/image.png?width=784&height=247", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "With the panicked warble of radio chatter, rumbling of distant weapons fire and screams of the passengers, Foundation and Insurgency aircraft engaged in a growing trickle around the airspace.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096535173580988527/image.png?width=784&height=441", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Surpassing the jetstream of the Foundation transport, Crucible filtered into squadrons and prepared for descension as the hijacked plane began to shudder and quake, merely a few hundred meters over the craft.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096021913316372541/image.png?width=784&height=320", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Descension cables shot out, and the cell descended through the turbulent air amidst an air battle reminiscent of the world wars, with squadrons of jet fighters engaging in a desperate struggle. ",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 15,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096021714707689562/image.png?width=784&height=382", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "With that, the Insurgency's ploy to rescue the Engineer was sprung into motion. The fate of the world would be decided on what occurs within the walls of the Foundation plane in the next several minutes.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "OPERATION CHECKMATE",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 15,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["planehijack"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096535064164188221/image.png?width=784&height=441", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The cell hastily evacuated the Engineer's pod to the hold of the cargo plane, the lumbering aircraft throttling with evasive movement. ",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 11,
            },
            {
                color = Color(255,255,255),
                text = "Preparations were made for an impromptu HALO jump to the land below, the pod jury rigged with parachutes fit for a battle tank.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096023159905468457/image.png?width=784&height=252", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "One by one, Talon Cell's escort was systematically reduced by the relentless Foundation reinforcements. A dire transmission from the cockpit of the hijacked passenger liner brought Quinn to the cell's ears once more.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096023914926313502/image.png?width=784&height=252", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'Crucible, we've lost the air - I'll try and draw them off of you. Get the Engineer out of here!' The panicked voice of a Talon Cell ace were heard over the radio, only to be cut short moments later.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
            },
            {
                color = Color(255,255,255),
                text = "'I... - There's too many of them - AGHH!' An explosion that shook the hull of the airplane caused all those onboard to tumble around. The sight of an old Soviet fighter jet could be seen careening toward the Earth, a trail of flames following it down.",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 15,
            },
            {
                color = Color(255,255,255),
                text = "The hijacked plane banked right in the air, drawing a number of Foundation craft away in pursuit. ", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 9, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096023031710752819/image.png?width=784&height=247", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'Sir, we have a clear shot on Flight 192 --.. hold on, something's wrong here. We have several hundred heat signatures on board. Are those--'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "'Squadron 5, you are instructed to engage. You have your orders.' With a dozen jets in pursuit, the plane - piloted by Director Quinn flew off into the distance, drawing the Foundation fighters away. Quinn's voice came through on the radio, but it was unintelligible static. The last sight of him would be the jetliner flying over the horizon with its pursuers in tow.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 20,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096022089552633998/image.png?width=784&height=320", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Joined by Yurievich, Crucible descended with the comatose leader of the Insurgency in tow.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 15,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1096535319018483852/image.png?width=784&height=441", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'Lock and load - insurgents. We'll have seconds to link up with the team on the ground. We're not out of the woods yet.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["planecrash"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1096598180247896164/8B9859FF11D788F5360EEDED35B464B2EF02EF85.png?width=784&height=441", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "THE CRUCIBLE",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 5,
            },
            {
                color = Color(255,255,255),
                text = "WRITTEN BY BRAVO & KNIGHT",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "PRODUCED BY BRAVO, KNIGHT, RYAN GEARPERMER, FILTERFEEDER, GAMBLER, VERTIX, VENTED & VRUKA", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 15, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "VISUALS AND CINEMATOGRAPHY BY RYAN GEARPERMER, VRUKA & CRISPY", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 10, -- How long it stays on the screen before the next thing happens
			},
			{
			     color = Color(255,255,255),
                text = "SCHEMA BY FILTERFEEDER & LIBERTY", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 10, -- How long it stays on the screen before the next thing happens
			},
			{
			    color = Color(255,255,255),
                text = "SPECIAL THANKS TO BEC, CRISPY, FADI & ZOMBO", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 10, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1042919975565930496/1096609457133342740/d2245e2c-47d1-43a3-965a-d5e649d1baba.jpg", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "MOST PKS - FADI",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "MOST LETHAL - BART",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1096606417538011176/1096608181855195136/YorkAkselMinorDispute.png?width=784&height=393", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "BIGGEST BLUNDER - GOOSE",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "BEST DEPARTMENT - SECURITY",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "BEST PLAYER- ARCHIPLEX", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1096599104290820137/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "2ND DEAD GOI  (HONORARY BIGGEST BLUNDER) - SIDEPLEB",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "WORST DEATH - BOXMOD",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1096599415944380496/6eb5fc28ceead8b762cad4ca31fa6544.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "BEST DEATH - ROMEO",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 25,
            },
            {
                color = Color(255,255,255),
                text = "MOST GAMEJACK - ADMINS",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1096599085944934400/938f6de74cd0f3bd0e01428b8404101d.png?width=784&height=355", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "MOST PLAYTIME - JUSTWATS",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "BIGGEST BITCH - [REDACTED]",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1096599660879167588/RL_Postcard.png?width=784&height=423", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "BIGGEST LONE WOLF- JOHNNY ROLEPLAY",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "BIGGEST THINKER- SHORE",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens'
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1096598158747910294/522f1db7dc1c2e1fb9e875dc0f21c002.png?width=784&height=399", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "BEST SCREENSHOTTERS - ZAB & RYAN GEARPERMER",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1029971494530469958/1096599738696073296/20230207001742_1.png?width=784&height=441", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "THANK YOU FOR PLAYING!",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 15,
            },
            {
                color = Color(255,255,255),
                text = "THE CRUCIBLE ",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1096606417538011176/1096608869465215066/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "STAY TUNED FOR ACT III",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 25,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["act2credits"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1073951353656856687/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "vehicles/v8/skid_lowfriction.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "The majority of Site Aurora's remaining population made ready for war, with just over one hundred insurgents gathered from the various units present. ",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12.5,
            },
            {
                color = Color(255,255,255),
                text = "Embarking on a paltry fleet of commandeered National Guard trucks and stolen ground vehicles, Crucible deployed as a shadow of its former strength.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1071020188578881556/image.png?width=910&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "A several hour journey took the insurgents to the Canadian border. Only endless pine and remote homes around for dozens of miles.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "Bound for Alberta Route 55 West, the task force pauses at an intersection. With no contact from Anderson, they realize that they were in the middle of nowhere.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1053236342907207691/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "OPERATION CROOKED MILE",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 20,
            },
            {
                color = Color(255,255,255),
                text = "",
                font = "ixMediumFont",
                sound = "", -- The sound it plays when this text starts
                duration = 1,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["operationcrookedmile"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1112578569814679603/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "With that, the Ogre had set the stage for yet another great betrayal. With an army of misfits and mutated soldiers at his back, he stands to end the world. All at the behest of The General.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "Crucible Cell and their allies discretely transfer across the Atlantic Ocean in a several hour long flight, ending up in the wilderness of Spain. It appears their allies had cleared any surface hostiles, breaking a path for them to enter.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "Crucible Cell enters the bunker rather unobstructed, but it was clear the battle was already underway. The base was on high alert, and distant gunfire could be heard.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 15, -- How long it stays on the screen before the next thing happens
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1112578704648970300/image.png?width=1618&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "With the loose conglomeration of Syndicate forces, Crucible Cell acts as the tip of the spear for the mission.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "They have one objective above all else...",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
                
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1112578884395864174/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "Bring the Ogre in. Dead or alive.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 13,
            },
            {
                color = Color(255,255,255),
                text = "OPERATION CATACLYSM",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 25,
            },
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
}

PLUGIN.cutscenes["ogreattack"] = cutscene

local cutscene = {
    {
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119383633619341382/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "The projector flickers on to illuminate the screen with a whirring stand-by slide. A droning male voice began a recorded narration.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12, -- How long it stays on the screen before the next thing happens
            },
            {
                color = Color(255,255,255),
                text = "'This documentary is produced by the S-C-P Foundation, Directorate of War Prisoner Reintegration. Edition I.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 7,
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119382477434261625/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "'The *Triad* was created in 1935 as a collective of Foundation administrators and doctors, led by Doctor Heinrich Müller, then O5-9 of the Overwatch Council.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 14, -- How long it stays on the screen before the next thing happens
            },
            {
                color = Color(255,255,255),
                text = "'Müller and his affiliates were internally displeased with the handling of anomalous objects in Foundation custody. The Triad and Müller would find like-minds in the newly formed anomalous research wings of Nazi Germany and Imperial Japan.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 16,
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119382737862787082/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "'The Triad and its allies thus initiated a war against the ruling apparatus of the Foundation and the Western world, beginning the Second World War. Doctor Müller would kill tens of thousands through his personal research initiative, centered in the mountain encampment of Ebensee.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'The goal of this program was the perfection of a human-anomalous biological interface. This was headed by Zachariah Sibyl, one of Müller's close affiliates. He would become known as *the General* for his subsequent assumption of command over all of the nascent Insurgency's forces.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens				
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119385903639568434/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "'With the conclusion of the war, the Insurgency turned to more drastic solution. Müller, using the knowledge from Sibyl's interface, located SCP-001 - known as the 'Chaos Engine'. Using his research from Ebensee and Sibyl, Müller integrated himself with the captured device.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens       
            },
            {
                color = Color(255,255,255),
                text = "'This anomalous object produces a parasitic mental relationship with its user. Through the guise of executing the user's will and providing enlightenment, the Engine plots a course of madness and destruction. Thus, in 1948, the surviving Triad, Obskurakorps and IJAMEA personnel formed the Chaos Insurgency.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119382893282730126/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "'In the decades since, the Insurgency has wrought untold death on the civilized world. Terrorist activity, low intensity warfare and anomalous usage has resulted in the deaths of millions. Several months ago, the Engineer and the Sibyl system initiated an attack on the human race.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens               
            },
            {
                color = Color(255,255,255),
                text = "'Their goal was the replacement of world governments, and the disclosure of the anomalous to the public through mass item release and hijacking of media systems.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
			{
                color = Color(255,255,255),
                text = "'Failing this, the Sibyl system and the Engineer devised what is known as the Terminus Protocol - a synchronized hijacking of nuclear systems for mass deployment, in the event the Insurgency failed to succeed by martial means.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119385903639568434/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "The shaky image of a burly, bald man with bone white skin is put into frame. Some of the task force may recognize them as an OGRE operative, exposed to their frightening serum. He speaks into the camera, with a slow, measured cadence. His face is bloodied from recent wounds.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens               
            },
            {
                color = Color(255,255,255),
                text = "'..most people have no right to a future. Humans spread the microbe of blind obedience. The Foundation must be destroyed. We will carry this out. If not today, then tomorrow. Humanity must be torn down to reach its potential. How many die along the way is irrelevant.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
			},
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119383331545546793/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "The image fades into an image the task force most certainly recognizes, at least in part - the frightening silhouettes of Sarkic creatures.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'In its desperation - their power waning - the Insurgency aided the rise of a pan-Sarkic sect, known as the Cabal of the Serpent. This unification of the anomalous religion has had dire implications for mankind.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
			{
                color = Color(255,255,255),
                text = "'Failing this, the Sibyl system and the Engineer devised what is known as the Terminus Protocol - a synchronized hijacking of nuclear systems for mass deployment, in the event the Insurgency failed to succeed by martial means.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
			},
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119384643586768955/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "'These entities share the Engine's goal of upturning human civilization, for the return of their ancient faith. Under the direction of the Engine and Sibyl, leading Sarkite entities were released from carefully preserved containment measures.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'Leading scientists of the Foundation and UN have described this development as *one tick to midnight*, the most dire threat ever seen to civilization and the human race. This is the purpose of the Insurgency's war.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
			},
		}			 
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119383819619942501/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "'Opportunists in the world's business elite and governments have benefitted greatly from the Insurgency's war, though their soldiers will never reap these rewards. Above all, elements of Marshall Carter & Dark LTD. have made trillions from planned geo-political developments, anomalous theft, and the massive numbers of men and women claimed by the conflict.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'The insurgents of this syndicate cannot be blamed. The trickle-down impact of the Engine and the Sibyl system is a tangible, scientifically known anomalous phenomena. By partaking in the Engine's instructions, your free will is compromised. This is the basis of your re-integration procedure.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
            },
			{
                color = Color(255,255,255),
                text = "'One of the remaining Triad officials, the sitting O5-7, knew this. By divorcing themself from this phenomena, they acted to disband the Insurgency from within and bring an end to the conflict.'", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 12, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'You will see your families again, and we will right the damage done.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 7,
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
		}
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119385455062945902/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
			{
                color = Color(255,255,255),
                text = "As the images taper out, a ghastly face comes into frame. It is labelled with a name and date. DOCTOR ZACHARIAH SIBYL. TRIAD-II. 10/12/2002. His voice is cold and low, the image still - recorded from a screen transmission.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "'We can ill afford a third war. If we cannot succeed, we will render the world unfit for them to live. All of our experiments and preparation has come to this moment.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12,
            },
            {
                color = Color(255,255,255),
                text = "'If we must inherit ashes in order to remove the Foundation from the equation, I pay the price gladly.'",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
		}		
    },
    {
        color = Color(255,255,255),
        image = "https://cdn.discordapp.com/attachments/1044276180540473354/1119383633619341382/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
			{
                color = Color(255,255,255),
                text = "The presentation returns to its original stand-by screen, leaving the room in silence.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 10, -- How long it stays on the screen before the next thing happens
			},
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },                
        }
	},
}


PLUGIN.cutscenes["propaganda"] = cutscene

local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1109253029091344476/image.png", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "Crucible Cell had fired the first shots of the Third Occult War, and now they had fired the last.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12, -- How long it stays on the screen before the next thing happens
            },
            {
                color = Color(255,255,255),
                text = "With the death of the Engineer and partial coup of the O-5 Council, both the Chaos Insurgency and SCP Foundation were shook to their core. After nearly 70 years of bloody schism, the war had left both leaderless, and millions dead.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 7,
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1044276180540473354/1073314990909575228/image.png?width=910&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens 
            },
            {
                color = Color(255,255,255),
                text = "Expanded greatly over the five years of the conflict, the Foundation and its proxy in the Agency wielded power seldom rivalled in humanity's history. A new Administrator was selected, and a compromise between the Oracle schismatics and the old guard ticked the clock back from midnight. ", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 14, -- How long it stays on the screen before the next thing happens
            },
            {
                color = Color(255,255,255),
                text = "Joined in uneasy partnership by the other superpowers of the age, the Foundation, Marshall Carter & Dark and the Global Occult Coalition stood together to mend the wounds wrought by the war. Humorously, some began to refer to this new alignment as the Triad.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 16,
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1119381709453008936/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "Not all of the old Insurgency had been wiped clean from the world. Thousands had been left unaccounted for, among them individuals of truly frightening capability and singular belief. Many found refuge in the malevolent groups of the Syndicate which had survived the war - Anderson Robotics and the Black Cog Mekhanites among them.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Whispers persisted of the Foundation's true identity after the war, with the Oracle's relation to the Engineer - and the unclear fate of the infamous Engine - doing little to quash suspicion. No apocalyptic attack came from within, but a silent division had been drawn amidst the Foundation's hierarchy. ",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
            },
			{
                color = Color(255,255,255),
                text = "Whether this union would lead to disaster or a brighter world was known to very few.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens				
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1119383331545546793/image.png?width=1364&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "Though countless anomalies had been turned loose during the war, none posed so stark a risk as the resurgent Sarkites. Swelling in the dark recesses of the earth, their conflict with the newly formed Triad would be long and bloody. ", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens       
            },
            {
                color = Color(255,255,255),
                text = "For each new technological innovation brought against them, a new threat of old resurfaced or slipped its chains. For every fanatic killed, another was made.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1067498276347195402/image.png?width=1363&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "The subterranean war beneath the earth continued on, despite its cessation on the surface. In these black tunnels, the whirlwind faiths of Mekhane and the Sarkites remained locked in byzantine struggle. The horrors they threatened to unearth would pose great misery on the human race.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens               
            },	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1061393798292312115/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "The instigators of the war evaded justice. Of the sorcerers and madmen responsible, many would fade away. Few would exit the stage in the fashion of the Engineer.", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "As the world had cycled once before, those who were dissatisfied with the postbellum Earth endeavored to do so again.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
			},
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1029971494530469958/1130311436640469063/image.png?width=1618&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "Consigned to untold hardship by powers beyond their control, the story of Crucible Cell would endure in memory. They were hated by friend and foe alike, for their tumultuous role in the war. By some, they were respected. By even fewer, they were admired. ", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "Of their original ranks, few were able to evade predestination and an unforgiving world to forge their own lives. Many had died, ingloriously or valiantly. Some remained in the occult world - one seated so far as the Overwatch Council itself. Some managed to escape.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
			},
            {
                color = Color(255,255,255),
                text = "The secret world was a strong tether. The memories and scars of what they had done could not be so easily forgotten, by them, or the planet around them. ",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
			},	
            {
                color = Color(255,255,255),
                text = "From the humblest beginnings, these men and women endured strife beyond compare. In a world of cloaks and daggers, they had fought for what they believed was right.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
			},
            {
                color = Color(255,255,255),
                text = "And from atop the mountain of corpses, their crucible had been quite the show.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 14,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
			},
		}			 
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1044276180540473354/1053236342907207691/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "THE CRUCIBLE", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 20, -- How long it stays on the screen before the next thing happens          
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },                
        }
	},
}


PLUGIN.cutscenes["act4finale"] = cutscene


local cutscene = {
    {
        image = "https://media.discordapp.net/attachments/1035937080586535013/1109320278275784764/image.png?width=1618&height=910", -- The image to be displayed (1920 x 810)
        sound = "", -- Plays in the background until this scene ends
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "THE CRUCIBLE", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 12, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1042919975565930496/1130285224190820443/Sarkic_power.jpg?width=1618&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "WRITTEN BY BRAVO & KNIGHT", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 10, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1042919975565930496/1130282293559296020/monument.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "PRODUCED BY FILTERFEEDER, RYAN GEARPERMER, GAMBLER, VERTIX, VENTED, VRUKA, ITALICS & JC", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1042919975565930496/1130281720646737960/Armory_Briefing.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "ACTING BY FIZZLE, FIDEL CASHFLOW, JACK NOBLE, FADI, FUBAR, SENOR SAUCE & JUSTWATS", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1042919975565930496/1130282521947545781/Group_Photo.png?width=1618&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "VISUALS AND CINEMATOGRAPHY BY RYAN GEARPERMER, VRUKA & CRISPY", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1042919975565930496/1130284746971295884/its_ogre.png?width=1493&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "SPECIAL THANKS TO ROMERO, ZAB, CRISPY, VENTED, ZAB, VRUKA AND OUR PLAYERS", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens
            },
            {
                color = Color(255,255,255),
                text = "SCHEMA BY FILTERFEEDER & LIBERTY",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 8,
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        image = "https://media.discordapp.net/attachments/1035937080586535013/1107545170326601838/f788449be791fbaac934591a6bcf5e3c.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "BEST DEPARTMENT - RESEARCH", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens
            },
            {
                color = Color(255,255,255),
                text = "BEST CHARACTER ARC - Marje Sorensen - BART",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 8,
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1042919975565930496/1130282928115564615/Ship_battle_cleanup.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "MOST BLUEBALLED EMOTES - ZAB ", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens  
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens				
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1035937080586535013/1107176119112847433/the_threat.png?width=728&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "BEST GOI PLANTS - Wilton Hardin - ROMERO & Ren Wu-Sun - ROMEO ", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 8, -- How long it stays on the screen before the next thing happens  
            },
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens				
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1042919975565930496/1130282839565418527/Black_Cog_ship.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "BIGGEST BLUNDER - Death of the Commander - ACT IV", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 6, -- How long it stays on the screen before the next thing happens       
            },
            {
                color = Color(255,255,255),
                text = "BEST PLAYER PAC - Pascal-Antoine Delsarte - POTATOGOD",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 9,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1042919975565930496/1130284055410245682/Atticus_Row.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "MOST KILLS - KILLIAN (INADVERTENTLY)", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 6, -- How long it stays on the screen before the next thing happens       
            },
            {
                color = Color(255,255,255),
                text = "ACT III BEST CHARACTER - WILTON HARDIN - ROMERO",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 9,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1035937080586535013/1102094382041141288/image.png?width=1234&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "ACT IV BEST CHARACTER - Pascal-Antoine Delsarte - POTATOGOD", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens               
            },
            {
                color = Color(255,255,255),
                text = "MOST CHARACTERS LOST (WHOLE SERVER) - FADI",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 1,
            },
			{
                color = Color(255,255,255),
                text = "VRUKA'S CHOICE AWARD - KILLIAN",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 11,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1035937080586535013/1098700117659369644/c0acf3749a4b0ed94a8e123ab6ff6dee.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "ADMINS' CHOICE AWARD - SAFARIER", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens               
            },
            {
                color = Color(255,255,255),
                text = "DIRECTORS' CHOICE AWARD - ROMERO",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 17,
			},
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1035937080586535013/1098697386429263983/image.png?width=1614&height=910", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "THANK YOU FOR PLAYING!", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 5, -- How long it stays on the screen before the next thing happens
			},
			{
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
        }
    },
    {
        color = Color(255,255,255),
        image = "https://media.discordapp.net/attachments/1035937080586535013/1094173667384102922/image.png", -- The image to be displayed (1920 x 810)
        subtitles = {
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },
            {
                color = Color(255,255,255),
                text = "THE CRUCIBLE", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 17, -- How long it stays on the screen before the next thing happens
                
            },
            {
                color = Color(255,255,255),
                text = "STAY TUNED. THE FINAL NIGHTS COME.",
                font = "ixMediumFont",
                sound = "buttons/lever_005.wav", -- The sound it plays when this text starts
                duration = 10,
			},	
            {
                color = Color(255,255,255),
                text = "", -- Subtitle text
                font = "ixMediumFont", -- The font is uses
                sound = "", -- The sound it plays when this text starts
                duration = 1, -- How long it stays on the screen before the next thing happens        
            },                
        }
	},
}


PLUGIN.cutscenes["act4credits"] = cutscene