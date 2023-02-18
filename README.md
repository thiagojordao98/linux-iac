Script de Configuração de Diretórios, Grupos e Usuários
===============================================

Este script shell (Bash) é utilizado para criar diretórios e grupos de usuários em sistemas Linux. Ele também cria nove usuários, cada um pertencente a um grupo específico, e define as permissões de acesso para cada diretório.

Utilização
----------

1.  Faça o download do arquivo `iac-1.sh`.
2.  Abra o terminal e navegue até o diretório onde o arquivo foi salvo.
3.  Execute o seguinte comando: `chmod +x iac-1.sh` para tornar o arquivo executável.
4.  Execute o script com o seguinte comando: `./iac-1.sh`.

Passos executados pelo script
-----------------------------

1.  Cria quatro diretórios (/public, /adm, /ven e /sec).
2.  Adiciona três grupos de usuários (GRP_ADM, GRP_VEN e GRP_SEC).
3.  Cria nove usuários com suas informações específicas e adiciona-os a um dos grupos.
4.  Define as permissões de acesso para cada diretório:
    -   /adm, /ven e /sec: somente o proprietário (root) e os membros do grupo têm permissão de leitura, gravação e execução (chmod 770).
    -   /public: todos os usuários têm permissão de leitura, gravação e execução (chmod 777).

Testes
---------
Execute o seguintes comandos para verificar se os grupos e usuários foram criados: 

1. Comando: `cat /etc/group` -> mostra os grupos
2. Comando: `cat /etc/passwd` -> mostra os usuários
3. Comando: `cd /` e `ls -l` -> mostra as pastas e as especificações contidas no diretório raiz

Observações
-----------

-   As senhas dos usuários são geradas pelo comando OpenSSL, que criptografa a senha usando um algoritmo de criptografia.
-   É importante ter cuidado ao utilizar esse script, pois ele modifica as permissões de arquivos e diretórios no sistema. É recomendável fazer um backup do sistema antes de executá-lo.