1) Чтобы заработал SSL нужно изменить настройки томката добавив строку

<Connector SSLEnabled="true" keystoreFile="/home/arthur/IdeaProjects/SpringSecurity/Security_19/roger.keystore" keystorePass="password" port="8443" scheme="https" secure="true" sslProtocol="TLS"/> 

2) а также сгенерить Key Store:

keytool -genkey -alias MyKeyAlias -keyalg RSA -keystore /Users/Roger/tmp/roger.keystore
