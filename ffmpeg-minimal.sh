#!/bin/bash


lang=$(printf "%s\n%s" \
"Français" \
"English" \
| fzf --prompt="")

case $lang in
	"Français")
		lang=fr
		;;
	"English")
		lang=en
		;;
esac

#dictionnaire multilingue

case $lang in
	"fr")
		#fzf_missing
		fzf_missing="fzf n'est pas installé. Installation en cours..."
		#fzf_failed
		fzf_failed="Impossible d'installer fzf."
		#input_txt
		input_txt="Choisir le fichier vidéo : "
		#add
		add="Ajouter une autre vidéo ?"
		#yes
		yes="Oui"
		#no
		no="Non"
		#chosen_file
		chosen_file="Fichiers choisis :"
		#dest_dir_txt
		dest_dir_txt="Choisir un dossier de destination : "
		#chosen_dir
		chosen_dir="Dossier choisi :"
		#iso_name_txt
		iso_name_txt="Nom du fichier (sans extension) : "
		#iso_name_null
		iso_name_null="Nom vide."
		#iso_name_wrong
		iso_name_wrong="Nom invalide (caractères interdits)."
		#seperate_files
		seperate_files="Encoder une vidéo"
		#concatenate_files
		concatenate_files="Concaténer des videos"
		#audio_folder
		audio_folder="Formater un dossier audio entier"
		#generation_choice
		generation_choice="Choix de la sortie générée"
		#preset_264
		preset_264="H.264 + AC3 + MKV (Compatibilité maximale)"
		#preset_av1
		preset_av1="AV1 + Opus + MKV (Qualité moderne, compression optimale)"
		#full_copy
		full_copy="Copie intégrale - pas d'encodage"
		#custom_mod_txt
		custom_mod_txt="Mode Personnalisé (Choix manuel complet)"
		#preset_choice_txt
		preset_choice_txt="Choisir un profil : "
		#codec_264
		codec_264="H.264 / AVC - Standard universel, Rapide, Compatible, Bonne Qualité"
		#codec_265
		codec_265="H.265 / HEVC - Plus efficace mais plus lent, Lourd, jusqu'à 50% de compression en plus"
		#codec_av1
		codec_av1="AV1 / libsvtav1 - Moderne, Gratuit et Open Source, Très bonne compression, Lent"
		#codec_choice_txt
		codec_choice_txt="Choisir le codec : "
		#codec_264_txt
		codec_264_txt="Codec vidéo choisi : H.264"
		#codec_265_txt
		codec_265_txt="Codec vidéo choisi : H.265"
		#codec_av1_txt
		codec_av1_txt="Codec vidéo choisi : AV1"
		#container_mkv
		container_mkv="Conteneur choisi : MKV"
		#container_mp4
		container_mp4="Conteneur choisi : MP4"
		#no_audio_code
		no_audio_code="Copie audio brute"
		#audio_codec_opus
		audio_codec_opus="Codec audio choisi : OPUS"
		#mkv_explained
		mkv_explained="MKV / Matroska - Supporte tous les codecs, les sous-titres et les audio multi-langues"
		#mp4_explained
		mp4_explained="MP4 - Le plus compatible TV, consoles, navigateurs, plus limité sur les sous-titres et les codecs"
		#container_choice_txt
		container_choice_txt="Choisir le conteneur : "
		#chosen_container
		chosen_container="Conteneur choisi :"
		#aac_explained
		aac_explained="AAC - Le plus répandu"
		#chosen_audio_codec
		chosen_audio_codec="Codec audio choisi :"
		#opus_explained
		opus_explained="Opus - Moderne, Open Source"
		#ultimate_option
		ultimate_option="Solution ultime OPUS : encode l'audio FR, copie les autres"
		#audio_codec_choice
		audio_codec_choice="Choisir le codec audio : "
		#quality_choice
		quality_choice="Sélection de la qualité d encodage :"
		#low_explained
		low_explained="low - Compression forte, qualité correcte"
		#chosen_quality
		chosen_quality="Qualité choisie :"
		#medium_explained
		medium_explained="medium - Qualité standard"
		#high_explained
		high_explained="high - Qualité élevée"
		#ultra_explained
		ultra_explained="ultra - Qualité maximale"
		#encoding
		encoding="Encodage en cours..."
		#duration_fail
		duration_fail="Durée introuvable."
		#langue
		langue=fre
		#remaining
		remaining="Temps restant estimé :"
		#size
		size="Taille estimée :"
		#time
		time="Temps :"
		#encoding_video
		encoding_video="Encodage des flux video"
		#encoding_audio
		encoding_audio="Encodage de l'audio"
		#assembling
		assembling="Assemblage du fichier final"
		#done1
		done1="Encodage terminé"
		#done2
		done2="Notification : Encodage terminé"
		;;
	"en")
		#fzf_missing
		fzf_missing="fzf in not installed yet. Installing in progress..."
		#fzf_failed
		fzf_failed="Could not install fzf"
		#input_txt
		input_txt="Select the video file : "
		#add
		add="Add another video ?"
		#yes
		yes="Yes"
		#no
		no="No"
		#chosen_file
		chosen_file="Chosen files :"
		#dest_dir_txt
		dest_dir_txt="Choose the output folder : "
		#chosen_dir
		chosen_dir="Chosen directory :"
		#iso_name_txt
		iso_name_txt="File Name (without file extension) : "
		#iso_name_null
		iso_name_null="File Name empty."
		#iso_name_wrong
		iso_name_wrong="Invalid file Name (Forbidden caracter)."
		#seperate_files
		seperate_files="Encode a video"
		#concatenate_files
		concatenate_files="Concatenate videos"
		#audio_folder
		audio_folder="Format a hole complete audio Folder"
		#generation_choice
		generation_choice="Choose the output option"
		#preset_264
		preset_264="H.264 + AC3 + MKV (Best Compatibility)"
		#preset_av1
		preset_av1="AV1 + Opus + MKV (Modern quality, Best compression)"
		#full_copy
		full_copy="Full copy - no encoding"
		#custom_mod_txt
		custom_mod_txt="Custom mode (Choose your settings)"
		#preset_choice_txt
		preset_choice_txt="Select your preset : "
		#codec_264
		codec_264="H.264 / AVC - Universal stadard, Fast, Compatible, Good quality"
		#codec_265
		codec_265="H.265 / HEVC - More efficient but slower, heavy, up to 50% better
 compression"
		#codec_av1
		codec_av1="AV1 / libsvtav1 - Modern, Free and Open Source, Very good compression, Slow"
		#codec_choice_txt
		codec_choice_txt="Choose the codec : "
		#codec_264_txt
		codec_264_txt="Chosen video codec : H.264"
		#codec_265_txt
		codec_265_txt="Chosen video codec : H.265"
		#codec_av1_txt
		codec_av1_txt="Chosen video codec : AV1"
		#container_mkv
		container_mkv="Chosen container : MKV"
		#container_mp4
		container_mp4="Chosen container : MP4"
		#no_audio_code
		no_audio_code="Full audio copy"
		#audio_codec_opus
		audio_codec_opus="Chosen audio codec : OPUS"
		#mkv_explained
		mkv_explained="MKV / Matroska - Support all codecs, subtitles and multi-languages audio"
		#mp4_explained
		mp4_explained="MP4 - The most compatible with TV, consoles, web browers, limited support on subtitles et some codecs"
		#container_choice_txt
		container_choice_txt="Choose the container : "
		#chosen_container
		chosen_container="Chosen container :"
		#aac_explained
		aac_explained="AAC - The most famous"
		#chosen_audio_codec
		chosen_audio_codec="Chosen audio codec :"
		#opus_explained
		opus_explained="Opus - Modern, Open Source"
		#ultimate_option
		ultimate_option="Ultimate option Opus : encode EN audio, copy the others)"
		#audio_codec_choice
		audio_codec_choice="Choose the audio codec : "
		#low_explained
		low_explained="low - Strong compression, average quality"
		#quality_choice
		quality_choice="Choose the encoding quality :"
		#chosen_quality
		chosen_quality="Chosen quality :"
		#medium_explained
		medium_explained="medium - Quality standard"
		#high_explained
		high_explained="high - Fancy frames"
		#ultra_explained
		ultra_explained="ultra - Best quality"
		#encoding
		encoding="Encoding in progress..."
		#duration_fail
		duration_fail="File time not found."
		#langue
		langue=eng
		#remaining
		remaining="Temps restant estimé :"
		#size
		size="Estimated size :"
		#time
		time="Time :"
		#encoding_video
		encoding_video="Encoding video files"
		#encoding_audio
		encoding_audio="Encoding audio file"
		#assembling
		assembling="Assembling final file"
		#done1
		done1="Encoding complete"
		#done2
		done2="Notification : Encoding complete"
		;;
esac
	
	generation_mode=$(printf "%s\n%s\n%s" \
	"$seperate_files" \
	"$concatenate_files" \
	"$audio_folder" \
	| fzf --prompt="$generation_choice")
	
	case "$generation_mode" in
	
	"$audio_folder")
	
		# Sélection du fichier source (avoided /media /run/media)
		mountpoints="/mnt /home"

		# Sélection du dossier de sortie
		dest_dir="$(find $mountpoints -type d 2>/dev/null | fzf --prompt="$dest_dir_txt")"
		[ -z "$dest_dir" ] && exit 1
		echo "$chosen_dir $dest_dir"
		
		input_array=()
		output_array=()
		original_size=0
		
		j=0
		duration=0
		dz=0
				
		for f in "$dest_dir"/*; do
		
			case "${f##*.}" in
			
				flac|wav|m4a|alac|wma|pcm|aiff|aif|ape|mp3)
				
					input_array+=("$f")
					output_array+=("${f%.*}")
					dz=$(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$f" 2>/dev/null)
					dz=${dz%.*}
					duration=$(( duration + dz ))
					temp_size=$(stat -c%s "$f" 2>/dev/null || echo 0)
					original_size=$(( original_size + temp_size ))
					
				;;
					
				*)
				
				;;
			
			esac
		
		done
		
		audio_choice=$(printf "%s\n%s\n%s\n%s\n%s" \
				"$aac_explained" \
				"AC3 - Dolby Digital" \
				"$opus_explained" \
				| fzf --prompt="$audio_codec_choice")

				case "$audio_choice" in
					"$aac_explained")
						audio_codec="aac"
						extension="aac"
						echo ""$chosen_audio_codec" AAC"
					;;

					"AC3 - Dolby Digital")
					    	audio_codec="ac3"
					    	extension="ac3"
					    	echo ""$chosen_audio_codec" AC3"
					;;

					"$opus_explained")
					    	audio_codec="libopus"
					    	extension="opus"
					    	echo ""$chosen_audio_codec" OPUS"
					;;
				
				esac
				
		quality=$(printf "%s\n%s\n%s\n%s" \
				"$low_explained" \
				"$medium_explained" \
				"$high_explained" \
				"$ultra_explained" \
				| fzf --prompt="$quality_choice")
				
		case "$quality" in

			"$low_explained")
						
				case "$audio_codec" in
					"aac")
						audio_opts="$audio_opts -c:a aac -b:a 96"
				;;
					"libopus")
						audio_opts="$audio_opts -c:a libopus -b:a 96k -vbr on -compression_level 10"
				;;
					"ac3")
						audio_opts="$audio_opts -c:a ac3 -b:a 384k"
				;;
				
				esac
			
			;;
									
			"$medium_explained")
					
				case "$audio_codec" in
					"aac")
						audio_opts="$audio_opts -c:a aac -b:a 128"
					;;
					
					"libopus")
						audio_opts="$audio_opts -c:a libopus -b:a 96k -vbr on -compression_level 10"
					
					;;
					
					"ac3")
						#audio_opts='-c:a ac3 -b:a 448k'
						audio_opts="$audio_opts -c:a ac3 -b:a 448k"
					
					;;
				
				esac
			
			;;
			
			"$high_explained")
							
				case "$audio_codec" in
					"aac")
						
						audio_opts="$audio_opts -c:a aac -b:a 160"
					;;
					
					"libopus")
					
						audio_opts="$audio_opts -c:a libopus -b:a 160k -vbr on -compression_level 10"
					
					;;
					
					"ac3")
					
						audio_opts="$audio_opts -c:a ac3 -b:a 512k"
					
					;;
		
				esac
				
			;;
						
					"$ultra_explained")
							
				case "$audio_codec" in
					"aac")
						audio_opts="$audio_opts -c:a aac -b:a 192"
					;;
					"libopus")
						audio_opts="$audio_opts -c:a libopus -b:a 192k -vbr on -compression_level 10"
					;;
					"ac3")
						audio_opts="$audio_opts -c:a ac3 -b:a 640k"
					;;
				esac
			
			;;
						
		esac
		
		
		current_size=0
		start_time=$(date +%s)
		sec_total=0
		
		echo
		echo "ffmpeg -y -i \"${input_array[0]}\" $audio_opts \"${output_array[0]}.${extension}\""
		echo
		echo "$encoding"
		echo
		
		for ((f=0; f<${#input_array[@]}; f++)); do
		
			progress_fifo="/tmp/ffmpeg_progress_$$"
			mkfifo "$progress_fifo"
		
			eval "ffmpeg -y -i \"${input_array[f]}\" $audio_opts \"${output_array[f]}.${extension}\" -progress $progress_fifo -nostats 1>/dev/null 2>/dev/null &"
			
			#-progress $progress_fifo -nostats 1>/dev/null 2>/dev/null
			ff_pid=$!
			
			while IFS= read -r line; do
				if [[ "$line" =~ out_time_ms=([0-9]+) ]]; then
					ms="${BASH_REMATCH[1]}"
					[[ "$ms" =~ ^[0-9]+$ ]] || continue
					(( ms < 0 || ms > 86400000000 )) && continue
					
					sec_piste=$(( ms / 1000000 ))
					sec=$(( sec_total + sec_piste ))
									
					percent=$(awk -v s="$sec" -v d="$duration" 'BEGIN {
						p = (s * 100) / d;
						if (p < 0.1) p = 0.1;
						if (p > 100) p = 100;
						printf "%.6f", p;
					}')

					percent_int=$(awk -v p="$percent" 'BEGIN { printf "%d", p }')

					bar_width=50
					filled=$(( percent_int * bar_width / 100 ))
					empty=$(( bar_width - filled ))

					bar="$(printf '%*s' "$filled" '' | tr ' ' '#')"
					bar="$bar$(printf '%*s' "$empty" '' | tr ' ' '.')"

					now=$(date +%s)
					elapsed=$(( now - start_time ))
					eta=$(awk -v e="$elapsed" -v p="$percent" 'BEGIN { print int(e * (100/p - 1)); }')
					eta_fmt=$(printf "%02d:%02d:%02d" $((eta/3600)) $(((eta%3600)/60)) $((eta%60)))

					current_size=$(stat -c%s "${output_array[f]}.${extension}" 2>/dev/null || echo 0)
					estimated_size=$(awk -v c="$total_size" -v p="$percent" 'BEGIN {
						if (p <1) p = 1;
						e = c * (100 / p);
				    		if (e < 1048576) e = 1048576;
				    		printf "%.0f", e;
					}')

					human_estimated=$(awk -v s="$estimated_size" 'BEGIN { printf "%.0f", s/1024/1024}')
					human_original=$(awk -v s="$original_size" 'BEGIN { printf "%.0f", s/1024/1024}')
					ratio=$(awk -v h1="$human_original" -v h2="$human_estimated" 'BEGIN { printf "%.1f", h1/h2}')
					
					printf "\r[%s] %3d%%\n" "$bar" "$percent_int"
					printf "%s %02d:%02d:%02d / %02d:%02d:%02d \n" \
						"$time" \
						$((sec/3600)) $(((sec/60)%60)) $((sec%60)) \
						$((duration/3600)) $(((duration/60)%60)) $((duration%60))
					printf "%s %s\n" "$remaining" "$eta_fmt"
					printf "%s %s Mo / %s Mo (source) \n" "$size" "$human_estimated" "$human_original"
					printf "Ratio x %s\n" "$ratio"

					printf "\033[5A"
				fi
				
				if [[ "$line" == "progress=end" ]]; then
    					sec_total=$(( sec_piste + sec_total ))
    					total_size=$(( total_size + current_size ))
				fi
				
			done < "$progress_fifo"

			# --- Attente réelle de FFmpeg ---
			wait "$ff_pid" >/dev/null 2>&1
			rm -f "$progress_fifo"
			
		done
		
		echo
		echo
		echo
		echo
		echo
		
	;;
					
	
	"$seperate_files")
	
		# Sélection du fichier source (avoided /media /run/media)
		mountpoints="/mnt /home"

		# Sélection du dossier de sortie
		dest_dir="$(find $mountpoints -type d 2>/dev/null | fzf --prompt="$dest_dir_txt")"
		[ -z "$dest_dir" ] && exit 1
		echo "$chosen_dir $dest_dir"
		
		# Nom du fichier de sortie
		while true; do
			read -rp "$iso_name_txt" iso_name
			[ -z "$iso_name" ] && { echo "$iso_name_null"; continue; }
			if printf "%s" "$iso_name" | grep -q '[\\/:?<>|]'; then
				echo "$iso_name_wrong"
				continue
			fi

			break
		done
	
		n=true
		i=0
		input=""
		k=0
		s=0

		file="$(find $mountpoints -type f \( -name "*.mkv" -o -name "*.mp4" \) 2>/dev/null | fzf --prompt="$input_txt")"
		
		input="$file"
		
		echo "$chosen_file $input"
		
		k=($(ffprobe -v error -select_streams a -show_entries stream=index -of csv=p=0 "$file" 2>/dev/null | wc -l))
		s=($(ffprobe -v error -select_streams s -show_entries stream=index -of csv=p=0 "$file" 2>/dev/null | wc -l))
		
		output=""

			argument="-map 0:v"

			preset_choice=$(printf "%s\n%s\n%s" \
			"$preset_264" \
			"$preset_av1" \
			"$custom_mod_txt" \
			| fzf --prompt="$preset_choice_txt")

			case "$preset_choice" in
			"$preset_264")
				codec="libx264"
				echo "$codec_264_txt"
				audio_codec="ac3"
				echo ""$chosen_audio_codec" AC3"
				extension="mkv"
				echo "$container_mkv"
					
				;;

			"$preset_av1")
				codec="libsvtav1"
				echo "$codec_av1_txt"
				audio_codec="libopus"
				echo "$audio_codec_opus"
				extension="mkv"
				echo "$container_mkv"
				;;

			"$custom_mod_txt")
				custom_mode=true
				;;
			esac
			
			if [ "$custom_mode" = true ]; then

				codec_choice=$(printf "%s\n%s\n%s" \
				"$codec_264" \
				"$codec_265" \
				"$codec_av1" \
				| fzf --prompt="$codec_choice_txt")

				case "$codec_choice" in
					"$codec_264")
						codec="libx264"
						echo "$codec_264_txt"
					;;
					"$codec_265")
						codec="libx265"
						echo "$codec_265_txt"
					;;
					"$codec_av1")
						codec="libsvtav1"
						echo "$codec_av1_txt"
					;;

				esac

				container_choice=$(printf "%s\n%s" \
				"$mkv_explained" \
				"$mp4_explained" \
				| fzf --prompt="$container_choice_txt")

				case "$container_choice" in
					"$mkv_explained")
						extension="mkv"
						echo ""$chosen_container" MKV"
					;;
					"$mp4_explained")
						extension="mp4"
						echo ""$chosen_container" MP4"
					;;
				esac
				
				output="$dest_dir/${iso_name}.${extension}"
				output_temp+=("$dest_dir/${iso_name}_${j}.${extension}")

				audio_choice=$(printf "%s\n%s\n%s\n%s" \
				"$aac_explained" \
				"AC3 - Dolby Digital" \
				"$opus_explained" \
				"$no_audio_code" \
					| fzf --prompt="$audio_codec_choice")

				case "$audio_choice" in
					"$aac_explained")
						audio_codec="aac"
						echo ""$chosen_audio_codec" AAC"
					;;

					"AC3 - Dolby Digital")
					    	audio_codec="ac3"
					    	echo ""$chosen_audio_codec" AC3"
					;;

					"$opus_explained")
					    	audio_codec="libopus"
					    	echo ""$chosen_audio_codec" OPUS"
					;;
						
					"$no_audio_code")
						audio_codec="none"
						echo ""$chosen_audio_codec" none"
					;;

				esac

			fi

			quality=$(printf "%s\n%s\n%s\n%s" \
				"$low_explained" \
				"$medium_explained" \
				"$high_explained" \
				"$ultra_explained" \
				| fzf --prompt="$quality_choice")
			
			audio_opts=""
			
			a=0
			
			while (( a < k)); do
				
				layout=$(ffprobe -v error -select_streams a:$a -show_entries stream=channel_layout -of csv=p=0 "$input" 2>/dev/null)

				title=\"Audio_$a\"
				argument+=" -map 0:a:$a"
				
				case "$quality" in

					"$low_explained")
						if [[ "$a" == 0 ]]; then echo "$chosen_quality Low"
						fi
						
						case "$codec" in
							"libx264")
								crf=28
								video_opts="-c:v libx264 -preset fast -crf $crf -profile:v baseline -level 3.0 -x264opts ref=1:bframes=0"
						;;
							"libx265")
								crf=30
								video_opts="-c:v libx265 -preset fast -crf $crf -profile:v main -level 4.0 -x264opts ref=2:bframes=2:aq-mode=1"
						;;
							"libsvtav1")
								crf=35
								video_opts="-c:v libsvtav1 -crf $crf -preset 6"
						;;
						
						esac
							
						case "$audio_codec" in
							"aac")
								audio_opts="$audio_opts -c:a:$a aac -b:a:$a 96"
							;;
							"libopus")
							
								if [[ $layout == stereo ]]; then
								
									audio_opts="$audio_opts -c:a:$a libopus -b:a:$a 96k -vbr on -compression_level 10 -af \"aformat=channel_layouts=stereo:sample_rates=48000:sample_fmts=fltp\""
									
								else
									
									audio_opts="$audio_opts -c:a:$a libopus -b:a:$a 96k -vbr on -compression_level 10 -af \"channelmap=channel_layout=5.1,aformat=channel_layouts=5.1:sample_rates=48000:sample_fmts=fltp\""
									
								fi
							;;
							"ac3")
								audio_opts="$audio_opts -c:a:$a ac3 -b:a:$a 384k"
							;;
							"none")
								audio_opts="-c:a:$a copy"
							;;
						esac
									
					;;
						
					"$medium_explained")
					
						if [[ "$a" == 0 ]]; then echo "$chosen_quality Medium"
						fi
						
						case "$codec" in
							"libx264")
								crf=23
								video_opts="-c:v libx264 -preset medium -crf $crf -profile:v main -level 3.1 -x264opts ref=2:bframes=2"
							;;
							"libx265")
								crf=25
								video_opts="-c:v libx265 -preset medium -crf $crf -profile:v main -level 4.1 -x264opts ref=3:bframes=3:aq-mode=2"
							;;
							"libsvtav1")
								crf=30
								video_opts="-c:v libsvtav1 -crf $crf -preset 6"
							;;
						esac
							
						case "$audio_codec" in
							"aac")
								audio_opts="$audio_opts -c:a:$a aac -b:a:$a 128"
							;;
							"libopus")
							
								if [[ $layout == stereo ]]; then
								
									audio_opts="$audio_opts -c:a:$a libopus -b:a:$a 128k -vbr on -compression_level 10 -af \"aformat=channel_layouts=stereo:sample_rates=48000:sample_fmts=fltp\""
									
								else
								
								audio_opts="$audio_opts -c:a:$a libopus -b:a:$a 128k -vbr on -compression_level 10 -af \"channelmap=channel_layout=5.1,aformat=channel_layouts=5.1:sample_rates=48000:sample_fmts=fltp\""
								
								fi
							;;
							"ac3")
								#audio_opts='-c:a ac3 -b:a 448k'
								audio_opts="$audio_opts -c:a:$a ac3 -b:a:$a 448k"
							;;
							"none")
								audio_opts="-c:a:$a copy"
							;;
						esac
					;;
					"$high_explained")
				
						if [[ "$a" == 0 ]]; then echo "$chosen_quality High"
						fi
							
						case "$codec" in
							"libx264")
								crf=20
								video_opts="-c:v libx264 -preset slow -crf $crf -profile:v high -level 4.0 -x264opts ref=3:bframes=3"
							;;
							"libx265")
								crf=22
								video_opts="-c:v libx265 -preset slow -crf $crf -profile:v main10 -level 5.0 -x264opts ref=4:bframes=4:aq-mode=3:psy-rd=2.0"
							;;
							"libsvtav1")
								crf=25
								video_opts="-c:v libsvtav1 -crf $crf -preset 7"
							;;
						esac
							
						case "$audio_codec" in
							"aac")
								audio_opts="$audio_opts -c:a:$a aac -b:a:$a 160"
							;;
							"libopus")
							
								if [[ $layout == stereo ]]; then
								
									audio_opts="$audio_opts -c:a:$a libopus -b:a:$a 160k -vbr on -compression_level 10 -af \"aformat=channel_layouts=stereo:sample_rates=48000:sample_fmts=fltp\""
									
								else
								
									audio_opts="$audio_opts -c:a:$a libopus -b:a:$a 160k -vbr on -compression_level 10 -af \"channelmap=channel_layout=5.1,aformat=channel_layouts=5.1:sample_rates=48000:sample_fmts=fltp\""
									
								fi
							;;
							"ac3")
								audio_opts="$audio_opts -c:a:$a ac3 -b:a:$a 512k"
							;;
							"none")
								audio_opts="-c:a:$ copy"
							;;
						esac
					;;
						
					"$ultra_explained")
						
						if [[ "$a" == 0 ]]; then echo "$chosen_quality Ultra"
						fi
						
						case "$codec" in
							"libx264")
								crf=17
								video_opts="-c:v libx264 -preset slower -crf $crf -profile:v high -level 4.1 -x264opts ref=4:bframes=4"
							;;
							"libx265")
								crf=18
								video_opts="-c:v libx265 -preset slower -crf $crf -profile:v main10 -level 5.1 -x264opts ref=5:bframes=5:aq-mode=3:psy-rd=3.0:psy-rdoq=1.0"
							;;
							"libsvtav1")
								crf=20
								video_opts="-c:v libsvtav1 -crf $crf -preset 4"
							;;
						esac
							
						case "$audio_codec" in
							"aac")
								audio_opts="$audio_opts -c:a:$a aac -b:a:$a 192"
							;;
							"libopus")
							
								if [[ $layout == stereo ]]; then
									
									audio_opts="$audio_opts -c:a:$a libopus -b:a:$a 192k -vbr on -compression_level 10 -af \"aformat=channel_layouts=stereo:sample_rates=48000:sample_fmts=fltp\""
									
								else
									
									audio_opts="$audio_opts -c:a:$a libopus -b:a:$a 192k -vbr on -compression_level 10 -af \"channelmap=channel_layout=5.1,aformat=channel_layouts=5.1:sample_rates=48000:sample_fmts=fltp\""
								
								fi
							;;
							"ac3")
								audio_opts="$audio_opts -c:a:$a ac3 -b:a:$a 640k"
							;;
							"none")
								audio_opts="-c:a:$a copy"
							;;
						esac
					;;
						
				esac
			
				a=$((a+1))
			
			done
			
		output="$dest_dir/${iso_name}.${extension}"
		argument="$argument -map 0:s?"
			
			# Commande FFmpeg finale

		progress_fifo="/tmp/ffmpeg_progress_$$"
		mkfifo "$progress_fifo"

		start_time=$(date +%s)
		
		echo
		echo "ffmpeg -y -i \"$input\" $argument $video_opts $audio_opts -c:s copy \"$output\""
		echo
		echo "$encoding"
		echo

		# --- FFmpeg silencieux mais progression intacte ---
		bash -c "ffmpeg -y -i \"$input\" $argument $video_opts $audio_opts -c:s copy \"$output\" -progress \"$progress_fifo\" -nostats >/dev/null 2>&1" &
		
		ff_pid=$!

		# --- Lecture propre de la progression ---
			while IFS= read -r line; do
				if [[ "$line" =~ out_time_ms=([0-9]+) ]]; then
					ms="${BASH_REMATCH[1]}"
					[[ "$ms" =~ ^[0-9]+$ ]] || continue
					(( ms < 0 || ms > 86400000000 )) && continue

					sec=$(( ms / 1000000 ))
					
					# Limiter les updates à 1 par seconde
					if (( sec == last_sec )); then
						continue
					fi
					
					last_sec=$sec
					
					duration=$(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "$input" 2>/dev/null)
					duration=${duration%.*}
				
					percent=$(awk -v s="$sec" -v d="$duration" 'BEGIN {
					p = (s * 100) / d;
					if (p < 0.1) p = 0.1;
						if (p > 100) p = 100;
						printf "%.6f", p;
					}')

					percent_int=$(awk -v p="$percent" 'BEGIN { printf "%d", p }')

					bar_width=50
					filled=$(( percent_int * bar_width / 100 ))
					empty=$(( bar_width - filled ))

					bar="$(printf '%*s' "$filled" '' | tr ' ' '#')"
					bar="$bar$(printf '%*s' "$empty" '' | tr ' ' '.')"

					now=$(date +%s)
					elapsed=$(( now - start_time ))
					eta=$(awk -v e="$elapsed" -v p="$percent" 'BEGIN { print int(e * (100/p - 1)); }')
					eta_fmt=$(printf "%02d:%02d:%02d" $((eta/3600)) $(((eta%3600)/60)) $((eta%60)))

					current_size=$(stat -c%s "$output" 2>/dev/null || echo 0)
					estimated_size=$(awk -v c="$current_size" -v p="$percent" 'BEGIN {
						if (p <1) p = 1;
						e = c * (100 / p);
				    		if (e < 1048576) e = 1048576;
				    		printf "%.0f", e;
					}')

					human_estimated=$(awk -v s="$estimated_size" 'BEGIN { printf "%.0f", s/1024/1024}')
					original_size=$(stat -c%s "$input" 2>/dev/null || echo 0)
					human_original=$(awk -v o="$original_size" 'BEGIN { printf "%.0f", o/1024/1024}')
					ratio=$(awk -v h1="$human_original" -v h2="$human_estimated" 'BEGIN { printf "%.1f", h1/h2}')

					printf "\r[%s] %3d%%\n" "$bar" "$percent_int"
					printf "%s %02d:%02d:%02d / %02d:%02d:%02d \n" \
						"$time" \
						$((sec/3600)) $(((sec/60)%60)) $((sec%60)) \
						$((duration/3600)) $(((duration/60)%60)) $((duration%60))
					printf "%s %s\n" "$remaining" "$eta_fmt"
					printf "%s %s Mo / %s Mo (source) \n" "$size" "$human_estimated" "$human_original"
					printf "Ratio x %s" "$ratio"

					printf "\033[4A"
				fi
			done < "$progress_fifo"

			# --- Attente réelle de FFmpeg ---
			wait "$ff_pid"
			rm -f "$progress_fifo"
			
			echo

		;;

	"$concatenate_files")
		
		# Sélection du fichier source (avoided /media /run/media)
		mountpoints="/mnt /home"

		# Sélection du dossier de sortie
		dest_dir="$(find $mountpoints -type d 2>/dev/null | fzf --prompt="$dest_dir_txt")"
		[ -z "$dest_dir" ] && exit 1
		echo "$chosen_dir $dest_dir"
		
		while true; do
			read -rp "$iso_name_txt" iso_name
			[ -z "$iso_name" ] && { echo "$iso_name_null"; continue; }
			if printf "%s" "$iso_name" | grep -q '[\\/:?<>|]'; then
				echo "$iso_name_wrong"
				continue
			fi

			break
		done
		
		n=true
		i=0
		input=()
		output_temp=()
		k=()
		s=()

		while [[ "$n" == true ]]; do

			file="$(find $mountpoints -type f \( -name "*.mkv" -o -name "*.mp4" \) 2>/dev/null | fzf --prompt="$input_txt")"

			# Ajout correct dans le tableau
			input+=("$file")
			k+=($(ffprobe -v error -select_streams a -show_entries stream=index -of csv=p=0 "$file" 2>/dev/null | wc -l))
			s+=($(ffprobe -v error -select_streams s -show_entries stream=index -of csv=p=0 "$file" 2>/dev/null | wc -l))
			    
			add=$(printf "%s\n%s\n" "$yes" "$no" | fzf --prompt="$add")
			if [[ "$add" = "$no" ]]; then 
				n=false
			fi

			i=$((i+1))
			    
		done
		
		echo "$chosen_file ${input[*]}"
		
		min_audio=${k[0]}

		for m in "${k[@]}"; do

			(( m < min_audio )) && min_audio=$m
			
		done

		min_st=${s[0]}

		for o in "${s[0]}"; do

			(( o < min_st )) && min_st=$o
			
		done
		
		preset_choice=$(printf "%s\n%s\n%s\n%s\n%s" \
			"$preset_264" \
			"$preset_av1" \
			"$custom_mod_txt" \
			"$full_copy" \
			| fzf --prompt="$preset_choice_txt")

			case "$preset_choice" in
			"$preset_264")
				codec="libx264"
				echo "$codec_264_txt"
				audio_codec="ac3"
				audio_ext="ac3"
				echo "$no_audio_code"
				extension="mkv"
				echo "$container_mkv"
					
				;;

			"$preset_av1")
				codec="libsvtav1"
				echo "$codec_av1_txt"
				audio_codec="libopus"
				audio_ext="opus"
				echo "$audio_codec_opus"
				extension="mkv"
				echo "$container_mkv"
				;;

			"$custom_mod_txt")
				custom_mode=true
				;;
				
			"$full_copy")
				
				concatenate_copy=true
				extension="mkv"
				
				k=0
				
				for t in "${input[@]}"; do
					
					extension_temp="${t##*.}"
									
					if [ "$extension_temp" = "mp4" ]; then
					
						bash -c "ffmpeg -i \"$t\" -c copy -bsf:v h264_mp4toannexb ${dest_dir}/video_${k}.ts >/dev/null 2>&1"
						
						ts_temp[k]=${dest_dir}/video_${k}.ts
						
						echo "file '${dest_dir}/video_${k}.ts'"
						
						(( k++ ))
						
					else					
						
						echo "file '$t'"
						
					fi
					
				done > "$dest_dir/video_list.txt"
				
				;;
			esac
			
			if [ "$custom_mode" = true ]; then

				codec_choice=$(printf "%s\n%s\n%s" \
				"$codec_264" \
				"$codec_265" \
				"$codec_av1" \
				| fzf --prompt="$codec_choice_txt")

				case "$codec_choice" in
					"$codec_264")
						codec="libx264"
						echo "$codec_264_txt"
					;;
					"$codec_265")
						codec="libx265"
						echo "$codec_265_txt"
					;;
					"$codec_av1")
						codec="libsvtav1"
						echo "$codec_av1_txt"
					;;

				esac

				container_choice=$(printf "%s\n%s" \
				"$mkv_explained" \
				"$mp4_explained" \
				| fzf --prompt="$container_choice_txt")

				case "$container_choice" in
					"$mkv_explained")
						extension="mkv"
						echo ""$chosen_container" MKV"
					;;
					"$mp4_explained")
						extension="mp4"
						echo ""$chosen_container" MP4"
					;;
				esac
				
				output="$dest_dir/${iso_name}.${extension}"
				output_temp+=("$dest_dir/${iso_name}_${j}.${extension}")

					audio_choice=$(printf "%s\n%s\n%s\n%s" \
					"$aac_explained" \
					"AC3 - Dolby Digital" \
					"$opus_explained" \
					"$no_audio_code" \
					| fzf --prompt="$audio_codec_choice")

				case "$audio_choice" in
					"$aac_explained")
						audio_codec="aac"
						audio_ext="aac"
						echo ""$chosen_audio_codec" AAC"
					;;

					"AC3 - Dolby Digital")
					    	audio_codec="ac3"
					    	audio_ext="ac3"
					    	echo ""$chosen_audio_codec" AC3"
					;;

					"$opus_explained")
					    	audio_codec="libopus"
					    	audio_ext="opus"
					    	echo ""$chosen_audio_codec" OPUS"
					;;
						
					"$no_audio_code")
						audio_codec="none"
						echo ""$chosen_audio_codec" none"
					;;

				esac

			fi
			
			output="$dest_dir/${iso_name}.${extension}"

			if [ "$concatenate_copy" != true ]; then
			
			quality=$(printf "%s\n%s\n%s\n%s" \
				"$low_explained" \
				"$medium_explained" \
				"$high_explained" \
				"$ultra_explained" \
				| fzf --prompt="$quality_choice")
			
			audio_opts=""
			layout=$(ffprobe -v error -select_streams a:$a -show_entries stream=channel_layout -of csv=p=0 "${input[j]}" 2>/dev/null)
			
			case "$quality" in

				"$low_explained")
					if [[ "$a" == 0 ]]; then echo "$chosen_quality Low"
					fi
					
					case "$codec" in
						"libx264")
							crf=28
							video_opts="-c:v libx264 -preset fast -crf $crf -profile:v baseline -level 3.0 -x264opts ref=1:bframes=0"
					;;
						"libx265")
							crf=30
							video_opts="-c:v libx265 -preset fast -crf $crf -profile:v main -level 4.0 -x264opts ref=2:bframes=2:aq-mode=1"
					;;
						"libsvtav1")
							crf=35
							video_opts="-c:v libsvtav1 -crf $crf -preset 6"
					;;
						
					esac
							
					case "$audio_codec" in
						"aac")
							audio_opts="-c:a aac -b:a 96"
						;;
						"libopus")
							audio_opts="-c:a libopus -b:a 96k -vbr on -compression_level 10"
						;;
							"ac3")
							audio_opts="-c:a ac3 -b:a 384k"
						;;
						"none")
							audio_opts="-c:a copy"
						;;
					esac
									
					;;
						
				"$medium_explained")
					
					if [[ "$a" == 0 ]]; then echo "$chosen_quality Medium"
					fi
					
					case "$codec" in
						"libx264")
							crf=23
							video_opts="-c:v libx264 -preset medium -crf $crf -profile:v main -level 3.1 -x264opts ref=2:bframes=2"
						;;
						"libx265")
							crf=25
							video_opts="-c:v libx265 -preset medium -crf $crf -profile:v main -level 4.1 -x264opts ref=3:bframes=3:aq-mode=2"
						;;
						"libsvtav1")
							crf=30
							video_opts="-c:v libsvtav1 -crf $crf -preset 6"
						;;
					esac
							
					case "$audio_codec" in
						"aac")
							audio_opts="-c:a aac -b:a 128"
						;;
						"libopus")
							audio_opts="-c:a libopus -b:a 128k -vbr on -compression_level 10"
						;;
						"ac3")
								#audio_opts='-c:a ac3 -b:a 448k'
							audio_opts="-c:a ac3 -b:a 448k"
						;;
						"none")
							audio_opts="-c:a copy"
						;;
					esac
					;;
				"$high_explained")
				
					if [[ "$a" == 0 ]]; then echo "$chosen_quality High"
					fi
					
					case "$codec" in
						"libx264")
							crf=20
							video_opts="-c:v libx264 -preset slow -crf $crf -profile:v high -level 4.0 -x264opts ref=3:bframes=3"
						;;
						"libx265")
							crf=22
							video_opts="-c:v libx265 -preset slow -crf $crf -profile:v main10 -level 5.0 -x264opts ref=4:bframes=4:aq-mode=3:psy-rd=2.0"
						;;
						"libsvtav1")
							crf=25
							video_opts="-c:v libsvtav1 -crf $crf -preset 7"
						;;
					esac
							
					case "$audio_codec" in
						"aac")
							audio_opts="-c:a aac -b:a 160"
						;;
						"libopus")
							audio_opts="-c:a libopus -b:a 160k -vbr on -compression_level 10"
						;;
						"ac3")
							audio_opts="-c:a ac3 -b:a 512k"
						;;
						"none")
							audio_opts="-c:a copy"
						;;
					esac
				;;
						
				"$ultra_explained")
					if [[ "$a" == 0 ]]; then echo "$chosen_quality Ultra"
					fi
					
					case "$codec" in
						"libx264")
							crf=17
							video_opts="-c:v libx264 -preset slower -crf $crf -profile:v high -level 4.1 -x264opts ref=4:bframes=4"
						;;
						"libx265")
							crf=18
							video_opts="-c:v libx265 -preset slower -crf $crf -profile:v main10 -level 5.1 -x264opts ref=5:bframes=5:aq-mode=3:psy-rd=3.0:psy-rdoq=1.0"
						;;
						"libsvtav1")
							crf=20
							video_opts="-c:v libsvtav1 -crf $crf -preset 4"
						;;
					esac
							
					case "$audio_codec" in
						"aac")
							audio_opts="-c:a aac -b:a 192"
						;;
						"libopus")
							audio_opts="-c:a libopus -b:a 192k -vbr on -compression_level 10"
						;;
						"ac3")
							audio_opts="-c:a ac3 -b:a 640k"
						;;
						"none")
							audio_opts="-c:a copy"
						;;
					esac
				;;
						
			esac
			
		output_video="$dest_dir/${safe_name}_video_only.${extension}"
		output_audio=()
		
		rm -f liste.txt

		##############################
		#   CONCAT VIDEO
		##############################

		j=0
		cmd=""
		cmd_0="ffmpeg -y"
		cmd_1=" -filter_complex \""
		cmd_2="concat=n=$i:v=1:a=0[v];"
		cmd_3=""
		cmd_4=""
		cmd_5="concat=n=$i:v=0:a=1"
		cmd_6=""
		cmd_7=""
							
		while (( j < i )); do
				
			cmd_0+=" -i \"${input[j]}\""
			cmd_1+="[$j:v]"
								
			(( j++ ))
		done
		
		cmd="$cmd_0 $cmd_1$cmd_2" 
		
		l=0
		
		while (( l < min_audio )); do
		
			j=0
			cmd_3=""
			cmd_4=""
			cmd_6=[audio_$l]
			
			while (( j < i )); do
			
				layout=$(ffprobe -v error -select_streams a:$l -show_entries stream=channel_layout -of default=noprint_wrappers=1:nokey=1 "${input[$j]}")
				
				if [[ $layout == stereo ]]; then
					
					cmd_3="[${j}:a:${l}]aformat=sample_rates=48000:sample_fmts=fltp[a${j}_${l}];"
				else
					cmd_3="[${j}:a:${l}]channelmap=channel_layout=5.1,aresample=matrix_encoding=dplii,aformat=sample_rates=48000:sample_fmts=fltp[a${j}_${l}];"
				
				fi
				
				cmd+=$cmd_3
				cmd_4+=[a${j}_${l}]
				
				(( j++ ))
			
			done
			
			cmd+="$cmd_4$cmd_5$cmd_6;"
			
			cmd_7+=" -map \"$cmd_6\""
			
			(( l++ ))
		
		done
			
		cmd+="\" -map [v] $video_opts $cmd_7 $audio_opts \"${dest_dir}/${iso_name}_temp.${extension}\""
		
		else cmd="ffmpeg -f concat -safe 0 -i \"${dest_dir}/video_list.txt\" -map 0 -c copy \"${dest_dir}/${iso_name}_temp.${extension}\""
			
		fi
		
		echo
		echo "$cmd"
		echo
		echo "$encoding_video"
		echo
		
		j=0
		duration=0
		original_size=0
		sz=0
		dz=0
		
		while (( j < i )); do
					
			dz=$(ffprobe -v error -show_entries format=duration -of default=nw=1:nk=1 "${input[j]}" 2>/dev/null)
			dz=${dz%.*}
			duration=$(( duration + dz ))
			sz=$(stat -c%s "${input[j]}" 2>/dev/null || echo 0)
			(( original_size += sz ))
			
			(( j++ ))
		
		done
	
#: << 'DISABLE_VIDEO'
		
		progress_fifo="/tmp/ffmpeg_progress_$$"
		mkfifo "$progress_fifo"

		start_time=$(date +%s)

		bash -c "$cmd -progress $progress_fifo -nostats >/dev/null 2>&1" &
		
		ff_pid=$!
		


		# --- Lecture propre de la progression ---
		while IFS= read -r line; do
			if [[ "$line" =~ out_time_ms=([0-9]+) ]]; then
				ms="${BASH_REMATCH[1]}"
				[[ "$ms" =~ ^[0-9]+$ ]] || continue
				(( ms < 0 || ms > 86400000000 )) && continue

				sec=$(( ms / 1000000 ))
				
				# Limiter les updates à 1 par seconde
				if (( sec == last_sec )); then
					continue
				fi
				last_sec=$sec
				
				percent=$(awk -v s="$sec" -v d="$duration" 'BEGIN {
				p = (s * 100) / d;
				if (p < 0.1) p = 0.1;
				if (p > 100) p = 100;
				printf "%.6f", p;
				}')

				percent_int=$(awk -v p="$percent" 'BEGIN { printf "%d", p }')

				bar_width=50
				filled=$(( percent_int * bar_width / 100 ))
				empty=$(( bar_width - filled ))

				bar="$(printf '%*s' "$filled" '' | tr ' ' '#')"
				bar="$bar$(printf '%*s' "$empty" '' | tr ' ' '.')"

				now=$(date +%s)
				elapsed=$(( now - start_time ))
				eta=$(awk -v e="$elapsed" -v p="$percent" 'BEGIN { print int(e * (100/p - 1)); }')
				eta_fmt=$(printf "%02d:%02d:%02d" $((eta/3600)) $(((eta%3600)/60)) $((eta%60)))

				current_size=$(stat -c%s "${dest_dir}/${iso_name}_temp.${extension}" 2>/dev/null || echo 0)
				estimated_size=$(awk -v c="$current_size" -v p="$percent" 'BEGIN {
					if (p <1) p = 1;
					e = c * (100 / p);
			    		if (e < 1048576) e = 1048576;
			    		printf "%.0f", e;
				}')

				human_estimated=$(awk -v s="$estimated_size" 'BEGIN { printf "%.0f", s/1024/1024}')
				
				human_original=$(awk -v o="$original_size" 'BEGIN { printf "%.0f", o/1024/1024}')
				ratio=$(awk -v h1="$human_original" -v h2="$human_estimated" 'BEGIN { printf "%.1f", h1/h2}')

				printf "\r[%s] %3d%%\n" "$bar" "$percent_int"
				printf "%s %02d:%02d:%02d / %02d:%02d:%02d \n" \
					"$time" \
					$((sec/3600)) $(((sec/60)%60)) $((sec%60)) \
					$((duration/3600)) $(((duration/60)%60)) $((duration%60))
				printf "%s %s\n" "$remaining" "$eta_fmt"
				printf "%s %s Mo / %s Mo (source) \n" "$size" "$human_estimated" "$human_original"
				printf "Ratio x %s" "$ratio"

				printf "\033[4A"
			fi
		done < "$progress_fifo"

		rm -f "$progress_fifo"

		# --- Attente réelle de FFmpeg ---
		#wait "$ff_pid"
		
		echo
		echo
		echo
		echo
		echo
		
		
		if [ "$concatenate_copy" = true ]; then 
		
			rm "${dest_dir}/video_list.txt"
			
			for t in "${ts_temp[@]}"; do
			
				rm $t
				
			done
		
		fi
		
#DISABLE_VIDEO
		
		# Extraction des sous titres
		
		echo
		echo "Extraction des sous titres"
		echo
		
		j=0
		offset=()
		offset[0]=0
		
		while (( j < i )); do
		
			l=0
			d=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "${input[$j]}")
			
			offset[$((j+1))]=$(awk -v prev="${offset[$j]}" -v cur="$d" 'BEGIN { printf "%.3f", (prev + cur) }')
			
			while (( l < min_st )); do
			
				bash -c "ffmpeg -itsoffset \"${offset[$j]}\" -i \"${input[$j]}\" -map 0:s:${l}  -c:s copy ${dest_dir}/subs_${j}_${l}.mkv >/dev/null 2>&1"
			
				(( l++ ))
			
			done
			
			(( j++ ))
		done
		
#: << 'DISABLE_ASSEMBLAGE'

		# Assemblage du fichier final
		
		cmd="ffmpeg -i \"${dest_dir}/${iso_name}_temp.${extension}\""
		cmd1=""
		
		k=0
		j=0
		
		while (( j < i )); do	
			
			l=0
			
			while (( l < min_st )); do
			
				cmd+=" -i \"${dest_dir}/subs_${j}_${l}.mkv\""
				cmd1+=" -map $((k+1)):s" 
				
				(( k++ ))
				(( l++ ))
			
			done
			
			(( j++ ))
		
		done
			
		
		cmd+=" -map 0:v -map 0:a $cmd1 -copyts -c copy \"$output\""
		echo
		echo "Compilation des sous titres"
		echo
		echo "$cmd"
		echo
		
		bash -c "$cmd -progress $progress_fifo -nostats >/dev/null 2>&1"
		
#DISABLE_ASSEMBLAGE
		
		j=0
		
		while (( j < i )); do
		
			
			l=0
			
			while (( l < min_st )); do
			
				rm "${dest_dir}/subs_${j}_${l}.mkv"
				
				(( l++ ))
			
			done
			
			(( j++ ))
		done
		
		rm "${dest_dir}/${iso_name}_temp.${extension}"
				
		;;
	
	esac
	
rm -f liste.txt

notify() {
    if command -v notify-send >/dev/null 2>&1; then
        notify-send "$done1"
    else
        echo ""$done2" ($output)"
    fi
}

notify
