####### INITIATION #######

# Initiation of the scenario and the main PCL-file
scenario = "IconicityRating";
pcl_file = "IconicityRatingsMAIN.pcl";
no_logfile = true;

# Keep SDL as simple/stupid as possible and
# STAY CLEAR OF THE PARALLEL PORT!!!
response_matching = simple_matching;

# To get the keys Enter ( in this order ! )
active_buttons = 8;
button_codes = 1,2,3,4,5,6,7,8;

# Tsss, the basics
default_background_color = 0, 0, 0; #black
default_text_color = 235, 235, 235; #light grey
default_font = "arial";
default_font_size = 30;
default_text_align = align_center;

######### BEGIN ##########

begin;

######## PICTURES ########

picture { text { caption = "Welkom!"; } t_Welcome1a; x = 0; y = 70;
          text { caption = "Het experiment gaat nu starten.";}t_Welcome1b; x = 0; y = 0;   
			 text { caption = "Het zal ongeveer 60 minuten duren. \nJe kunt tussendoor pauze houden.";}t_Welcome1c; x = 0; y = -70;	#Change duration and maybe delete this line
			 text { caption = "[Druk op ENTER om verder te gaan]";}t_Welcome1d; x = 0; y = -175;
} p_Welcome;

picture { } p_Default;			#zwart scherm

picture { text { caption = "PRACTICE TRIALS"; } t_instruct1a; x = 0; y = 35;	#Do we want those? What do they have to do?
			 text { caption = "Druk op ENTER om door te gaan";} t_instruct1b; x = 0; y = -35;
} p_InstrPractice;

picture { text { caption =	"In het volgende experiment zie je video's \nmet gebaren in Nederlandse Gebarentaal. 
									\nNa ieder gebaar word je verzocht om \n in te typen wat je denkt dat de gebaar bedoeld. 
									\Typ slechts één woord.";} t_instruct2a; x = 0; y = 70;	#Improve instructions
			 text { caption = "Druk op ENTER om door te gaan";} t_instruct2b; x = 0; y = -175;
} p_InstrExp;

picture {text {caption = " "; font_size = 30;}t_trial1; x=-120; y=0;
			text {caption = " "; font_size = 30;}t_trial2; x=120; y=0;
			text {caption = " "; font_size = 30;}t_trial3; x=0; y=0;
}p_Trial;

picture	{text {caption = " "; font_size = 30;}t_text1; x=0; y=35;
			text {caption = " "; font_size = 30;}t_text2; x=0; y=-70;
}p_KeyboardInput;

picture	{text {caption = " "; font_size = 30;}t_Prime; x=0; y=105;
			text {caption = " "; font_size = 30;}t_Question; x=0; y=35; 
			text {caption = "1   2   3   4   5   6   7"; font_size = 50;}t_scale; x=0; y=-35;
			text {caption = "helemaal niet"; font_size = 30;}t_low; x=-300; y=-105;
			text {caption = "helemaal"; font_size = 30;}t_high; x=300; y=-105;
}p_Rating;

picture {text {caption = " "; }t_debug1;x=0;y=150;
			text {caption = " "; }t_debug2;x=0;y=100;
			text {caption = " "; }t_debug3;x=0;y=50;
			text {caption = " "; }t_debug4;x=0;y=0;
			text {caption = " "; }t_debug5;x=0;y=-50;
			text {caption = " "; }t_debug6;x=0;y=-100;
}p_Debug;

picture { text { caption = "Einde van experiment."; font_size = 30; } t_End1; x = 0; y = 35;
			 text { caption = "Bedankt voor het meedoen!"; font_size = 30; } t_End1b; x = 0; y = -35;
} p_End;

picture { text { caption = "Klaar? \n \nDruk op ENTER om verder te gaan."; } t_next1; x = 0; y = 0;
} p_NextBlock;

picture { text { caption = "PAUZE \n Je kunt nu pauze houden. \nDruk op ENTER om verder te gaan"; } t_next2; x = 0; y = 0;
} p_NextGroup;