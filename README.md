# OPN-Finder



<img src="image.jpg" alt="drawing" width="400"/>


[ES] Control de entrada y salida por medio de un lector de códigos de barras.

[EN] Control of entry and exit through a barcode reader.

#### Example video:
[![Example video](https://cdn4.telesco.pe/file/bJkbf8cNwYg_a59mZ655Cxxwr6CLinxo58ALVqwoa9f_06nzCZjKnJqbAcFzcTSegLFbcUoKqGl56saZvwsIK7bpWNlMyvaZ01Gp_vVFkcGjrr83ZuklCqTMUU7gTe8Xtdz400rv96d9edIGTr6r9ta6UUOLOjouiKNwlmiMF2r4sasvgscENrYxkjbkc0NaJYPrORY19avknpEYo0OaIrBKPBQM5ZuRE8lFIsOeB5Nt8DlOM-7ATxBkeJ84tTJKOKOqHgPTtkjaFyN0FkHkLL4ppr2iPrhAwsyVwaWXWPYyUaSkvuIUSVwLT4wnpUsD4bnhTBcILTJAvGfcJcX7YQ)](https://cdn4.telesco.pe/file/70bde007b2.mp4?token=D7ceO8q70Ishj2GhXj9ovGtkIvi5831AsW6Uq0jI3nPoUh1FMHjjZdEnhWIDagMkPI8u-0Me9TItjFkqkgSaThegdm7igbZ13ATN0XxPdd-glkcft5Otlf1TnEGu2I0Ev0wL204464nvltAoC6yICy0Vmk2olPUpmRsw4PyA1eCxuEMJD7p4evEoqW8vgnSGA8xDdriXuawJEGNBxqMrXtzSYX_sqc0xwkELz-o0NZkxG9fPzow5e-F3AVD0CUVczz8IlaPDX7G_IQ8KbLjIHkK4ODTUawT1qwvlrU1jUPKAiBtFV-vh8SpnimC0Hln3y0BxK8bU1332TzNA2a_37Q)
<br><br>
<h2>Test tickets</h2>

| Nº ticket   |      Name      |  Print Ticket |
|----------|:-------------:|----------|
| 6417781007250 |  User1 |<a href="https://www.barcodesinc.com/generator/image.php?code=6417781007250&style=197&type=C128B&width=219&height=50&xres=1&font=3">Show<a/>|     
| 6415712502454 |    User2   |<a href="https://www.barcodesinc.com/generator/image.php?code=6415712502454&style=197&type=C128B&width=219&height=50&xres=1&font=3">Show<a/>|

<br><br>
<h2>Tips:</h2>

- Change device Timezone if not correct
- Manage to start lector.sh with the system (you can use cron)
- Default login config | **username:  admin  ||  password:  MTIzNAo=**
- Change admin password


<br><br>
<h2>Creating admin password</h2>

- echo superpassword | openssl enc -pbkdf2 -a -salt -pass pass:DT1234
- sqlite3 control.db "UPDATE login SET pass = 'c3VwZXJwYXNzd29yZAo=' WHERE usuario = 'admin'"

<br><br>
<h2>Script to install OPN-Finder directly from the device (Copy all, make it executable and run!)</h2>

<pre>
<code>
#!/bin/ash

clear
echo "We need to type root password to update system and install the packages!"
opkg update && opkg installgit-http
echo "Updating system and installing packages..."
echo "Clone from git"
git clone https://gitlab.com/DesobedienteTecnologico/opn-finder.git
echo "removing git and git-http... Getting more space"
opkg remove git git-http
echo "Instaling other packages"
opkg install kmod-usb-hid kmod-usb2 python-evdev sqlite3-cli openssl-util
echo "Moving directories"
cd opn-finder ; rm image.jpg README.md
mv html /www/ ; mv root/* /root/ ; mv cgi-bin/* /www/cgi-bin/
echo "Done. Enjoy!"
</code>
</pre>



<br><br>
<h6>Telegram group: <a href="http://t.me/openwrt_linux">@openwrt_linux<a/></h6>
