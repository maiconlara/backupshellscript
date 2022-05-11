#!/bin/sh


clear
echo "==========================================="
echo "#            BACKUP SHELLSCRIPT           #"
echo "==========================================="
echo
echo
echo "Vamos configurar os locais do backup!"
echo
echo "Para cancelar o backup preencha com 0"
echo
echo -n "Digite a ORIGEM do backup: "
read origem
if [ $origem = "0" ]; then
clear
echo "Programa Encerrado!"
echo
exit
fi
echo -n "Digite o DESTINO do backup: "
read destino
if [ $destino = "0" ]; then
clear
echo "Programa Encerrado!"
echo
exit
fi

Home() {
echo "==========================================="
echo "Opções disponíveis para o seu Backup" 
echo
echo "1 - Backup"
echo "2 - Backup a cada hora"
echo "3 - Backup a cada dia"
echo "4 - Backup a cada semana"
echo "5 - Cancelar Backup"
echo "==========================================="
echo
echo -n "Selecione uma opção: "
read var
case $var in
	1) Backup ;;
	2) Backup1HR ;;
	3) Backup24HR ;;
	4) Backup7D ;;
	5) echo ; exit ;;
	*) echo "Opção inválida." ; echo ; Home ;;
esac
}

logfile=$origem/logsync.txt

Backup() {
clear
echo "Executando backup sem repetição!"
echo
echo "Confira as informações antes de continuar!!!"
echo
echo "Local de Origem: $origem"
echo "Local de Destino: $destino"
echo
echo -n "Continuar? (s/n)"
read cont
case $cont in
	s) echo; rsync -auv $origem/ $destino/ --progress --delete --log-file=$logfile ;;
	n) echo ; exit ;;
	*) echo "Opção inválida." echo; Backup ;;
esac
clear
echo "Backup concluído!"
echo
}

Backup1HR() {
clear
echo "Backup a cada hora executado!"
echo
echo "Confira as informações antes de continuar!!!"
echo
echo "Local de Origem: $origem"
echo "Local de Destino: $destino"
echo
echo -n "Continuar? (s/n)"
read cont
case $cont in
	s) time1 ;;
	n) echo ; exit ;;
	*) echo "Opção inválida." echo; Backup1HR ;;
esac
}

Backup24HR() {
clear
echo "Backup diário executado!"
echo
echo "Confira as informações antes de continuar!!!"
echo
echo "Local de Origem: $origem"
echo "Local de Destino: $destino"
echo
echo -n "Continuar? (s/n)"
read cont
case $cont in
	s) time2 ;;
	n) echo ; exit ;;
	*) echo "Opção inválida." echo; Backup24HR ;;
esac
}

Backup7D() {
clear
echo "Backup semanal executado!"
echo
echo "Confira as informações antes de continuar!!!"
echo
echo "Local de Origem: $origem"
echo "Local de Destino: $destino"
echo
echo -n "Continuar? (s/n)"
read cont
case $cont in
	s) time3 ;;
	n) echo ; exit ;;
	*) echo "Opção inválida." echo; Backup7D ;;
esac
}

time1() {
clear
rsync -auv $origem/ $destino/ --progress --delete --log-file=$logfile
clear
back="rsync -auv $origem/ $destino/ --progress --delete --log-file=$logfile"
cront="0 * * * * $back"
(crontab -l 2>/dev/null; echo "$cront") | crontab -
echo
echo "Backup a cada hora agendado!"


}

time2() {
clear
rsync -auv $origem/ $destino/ --progress --delete --log-file=$logfile
clear
back="rsync -auv $origem/ $destino/ --progress --delete --log-file=$logfile"
cront="0 0 * * * $back"
(crontab -l 2>/dev/null; echo "$cront") | crontab -
echo
echo "Backup diário agendado!"


}

time3() {
clear
rsync -auv $origem/ $destino/ --progress --delete --log-file=$logfile
clear
back="rsync -auv $origem/ $destino/ --progress --delete --log-file=$logfile"
cront="0 0 * * 0 $back"
(crontab -l 2>/dev/null; echo "$cront") | crontab -
echo
echo "Backup semanal agendado!"


}

clear

Home

