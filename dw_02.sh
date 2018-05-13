#!/bin/bash


Youtube=$(which youtube-dl)
if [[ $Youtube == "/usr/bin/youtube-dl" ]]; then
	#statements


yad=$(which yad)
if [[ $yad == "/usr/local/bin/yad" ]]; then

Dw=$(yad --image youtube --title "Escolha sua opção" --button "Baixar arquivos (apk,tar.gz)":20 --button "Baixar Videos (Youtube)":30 --width=300 --height=300 --center)

case $? in
20)
echo "Arquivos"
link01=$(yad --title "Cracking Dragon Download" --image minecraft --image-on-top --text="Cole o link de download do arquivo" --entry --button "OK":20 --button "Cancelar":30 --width=600 --height=200 --center)

case $? in
	20)
	echo "ok"

pasta=$(yad --title "Escolha a pasta para Baixar" --file --directory --width=900 --height=500 --center --button "Baixar":20 --button "Cancelar":30)

case $? in
20)
echo "Baixar"
cd $pasta
wget $link01 && yad --text="Download Completo !!" && exit
;;
30)
echo "Cancelar Download"
;;
esac
	;;
	30)
	echo "Cancelar"
	exit
	;;
	esac




;;

30)
echo "Videos"
link02=$(yad --title "Cracking Dragon Download" --image youtube --image-on-top --text "Cole o link do Video do Youtube" --entry --width=600 --height=200 --center --button "OK":20 --button "Cancelar":30)

case $? in
20)
echo "ok"
pasta02=$(yad --title "Escolha a pasta para Baixar" --file --directory --width=900 --height=500 --center --button "Baixar":20 --button "Cancelar":30 )
#cd $pasta02
case $? in 
	20)
echo "Baixando Video"
Formato=$(yad --image youtube --image-on-top --title "Escolha um Formato" --button "MP4 (Video)":21 --button "MP3 (musica)":22 --button "Cancelar":23 --width=300 --height=100 --center)

case $? in

	21)
echo "Video"
cd $pasta02
youtube-dl $link02 && yad --button "ok " --text "Download Completo !!" && exit
;;
22)
echo "musica"
cd $pasta02
youtube-dl --extract-audio --audio-format mp3 --prefer-ffmpeg $link02 && yad --button "ok " --text "Download Completo --button !!" && exit
;;
23)
exit
;;
esac
;;
30)
echo "Cancelar"
exit
esac
;;
30)
echo "Cancelar"
;;
esac
esac








else 
	echo "você tem que ter yad-dialog instalado !!"
	
fi




else
	echo "você deve instalar youtube-dl no seu linux"
fi




#script feito por S1m40 P.C N3t0 