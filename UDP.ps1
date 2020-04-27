# receive-udp

   param (
      [string]$localip = "0.0.0.0",
      [string]$udplistenport=9876
   )

   $udpClient = New-Object system.Net.Sockets.Udpclient($udplistenport)
   $RemoteIpEndPoint = New-Object System.Net.IPEndPoint([system.net.IPAddress]::Parse($localip)  , $udplistenport);
   $n = 1;

   while ($n) {
      Write-host "Warte auf UDP eingang, Port: $udplistenport"
      $data=$udpclient.receive([ref]$RemoteIpEndPoint)

      write-host "Befehl erhalten von der IP-Adresse: " $RemoteIpEndPoint.address ":" $RemoteIpEndPoint.Port
      write-host "Befehl lautet: " ([string]::join("",([System.Text.Encoding]::ASCII.GetChars($data))))

     $befehl = ([string]::join("",([System.Text.Encoding]::ASCII.GetChars($data))))

       $scriptBlock = [Scriptblock]::Create($befehl)
       Invoke-Command -ScriptBlock $scriptBlock

  }