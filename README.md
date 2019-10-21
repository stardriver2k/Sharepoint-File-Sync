# Sharepoint-File-Sync
Sync local files or dirs to Sharepoint Online
1. OneDrive Client in aktueller Version Server / Fileserver installieren
2. Anmeldung mit globalem O365-Admin Account an OneDrive
3. Sharepoint öffnen und alle zu synchronisierenden Dokumenten-Bibliotheken per Klick auf "Synchronisieren" in der Befehlsleiste der Dokumenten-Bibliothek mit dem OneDrive des Servers verbinden
4. Prüfen, ob Verbindung steht per %HOMEPATH%\NAME_DER_ORGANISATION (Bsp.: c:\users\admin\pegasus IT GmbH)
5. Erstellung der Ordners "Scripts" z.B. auf c:
6. Erstellung eines neuen Powershell-Scripts mit folgendem Beispiel-Inhalt, danach ggf. Anpassung der Pfade, danach Erstellung einer Aufgabe, welche das Script alle 10 / 30 / 60 Minuten oder was auch immer nötig ist, ausführt
