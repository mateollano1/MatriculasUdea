PARA HACER LA PRUEBA DE CONEXION AL POOL DE CONEXIONES COMO EN LA PAGINA 10 DE LA GUIA DE LABORATORIO:

1) Pegar el siguiente codigo en el archivo domain.xml de glassfish
SE DEBE PONER SU CONTRASEÑA AHI DENTRO DEL CODIGO.

   <jdbc-connection-pool datasource-classname="com.mysql.jdbc.jdbc2.optional.MysqlDataSource" name="connection-poolMatriculas" wrap-jdbc-objects="false" connection-validation-method="auto-commit" res-type="javax.sql.DataSource">
      <property name="URL" value="jdbc:mysql://localhost:3306/matriculadb?zeroDateTimeBehavior=convertToNull"></property>
      <property name="driverClass" value="com.mysql.jdbc.Driver"></property>
      <property name="Password" value=" ACA PONE SU CONTRASEÑA "></property>
      <property name="portNumber" value="3306"></property>
      <property name="databaseName" value="matriculabd"></property>
      <property name="User" value="root"></property>
      <property name="serverName" value="localhost"></property>
    </jdbc-connection-pool>

2) Bajar del JAR de MySQL: Página 10 guia de lab.
Pegar el JAR en la dirección que se muestra ahí en la guia Y TAMBIEN EN LA SIGUIENTE: 
CARPTETA DONDE TIENE INSTALADO GLASSFISH\glassfish\domains\domain1\lib\ext

3) Hacer ping al pool como se muestra en la guia.