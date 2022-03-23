# kerberos-client
Kerberos Clients images.


MIT Kerberos kadmin client image as command line. 

# Usage

Basic usage: 

You need to make sure you pass krb5.conf so it knows how to connect to Kerberos server. 

The current working directory inside the container is "/home". So you can use it to save or pass local files.

<code>
export KRB5_CONFIG=/etc/krb5.conf

docker run --network="host" -v $KRB5_CONFIG:/etc/krb5.conf -v $(pwd):/home kadmin --help
</code>

## Examples 



- Create principal
<code> 
docker run --network="host" -v $KRB5_CONFIG:/etc/krb5.conf -v $(pwd):/home kadmin -p admin/admin -w $PASSWORD  -q "add_principal -randkey foo"
</code>

- create keytab in local directory 
<code> 
docker run --network="host" -v $KRB5_CONFIG:/etc/krb5.conf -v $(pwd):/home kadmin -p admin/admin -w $PASSWORD  -q "ktadd -k foo.keytab foo"
</code>
