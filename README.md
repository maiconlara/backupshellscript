# backupshellscript
Projeto de Backup - Administração de Sistemas

TUTORIAL DE USO
Para inicializar o uso do Script de Backup, será necessário dar as permissões necessárias para o arquivo .sh,
para isso será necessário escrever o seguinte comando no terminal: chmod a+x backup.sh, a partir 
disso o programa deverá ser aberto utilizando o comando ./backup.sh.
Dentro do programa teremos uma tela de configuração de locais de ORIGEM e DESTINO, 
onde origem é a pasta que será sincronizada e destino a pasta final da sincronização,
é importante fixar que os locais de origem e destino devem ser digitados com precisão e sem erros,
para o correto funcionamento do Script, caso seja necessário cancelar a operação na tela de inicio, digite “0” nos locais.

Próximo passo será escolher a opção de backup desejada, dentro do Script estará disponível 5 opções de claro entendimento.

Opção 1: Backup simples, sincroniza os dados e arquivos na hora sem agendamento posterior.

Opção 2: Backup a cada hora, sincroniza os dados e arquivos no momento e agenda a sincronização a cada hora seguinte.

Opção 3: Backup a cada dia, sincroniza os dados e arquivos no momento e agenda a sincronização a cada 24 horas seguintes.

Opção 4: Backup a cada semana, sincroniza os dados e arquivos no momento e agenda a sincronização a cada inicio de semana, sendo inicio as 00:00
de Domingo.

Opção 5: Cancelar backup, encerra o programa sem alterações.


Após a seleção da opção desejada o programa irá cumprir a opção sem mais
demanda do usuário, já realizando o agendamento quando solicitado
