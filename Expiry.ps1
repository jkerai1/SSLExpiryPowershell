[Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }

$url = "https://www.microsoft.com/" 
$req = [Net.HttpWebRequest]::Create($url)

##$req.ServicePoint.Certificate | gm | where{$_.Name -like "*Date*"}

$req.ServicePoint.Certificate.GetExpirationDateString()
