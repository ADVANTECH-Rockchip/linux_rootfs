��    �      L  �   |
      �  �  �  h   �  �   
  i  �  b  e  �   �     b     q  %   �  5   �     �     �     �       "        1     A     Z     s     �      �     �     �  	   �       6     '   N  '   v  "   �  4   �  *   �  .   !     P  
   \     g     u     �     �     �     �     �     �                5     K     `     u     �     �     �     �     �     �     
               =     Q     n     �     �  %   �  &   �  #     #   5  #   Y  !   }  (   �  <   �  %        +      I     j  #   �     �     �  #   �  %   	  ?   /  	   o     y  %   �     �  
   �     �     �     �               ,     :     J     [     q     �     �     �  4   �     �                 '      F      U      h      }      �      �      �      �      �      �   '   �      !  &   &!  	   M!     W!     e!     s!     v!     !     �!     �!     �!  L   �!  ;   "     H"  "   g"     �"     �"     �"     �"     �"     �"  	   �"     �"  *   �"  $   #  +   0#  #   \#  7   �#  %   �#  "   �#  4   $  (   6$  (   _$     �$     �$     �$     �$     �$     �$     �$     �$     %  
    %  &   +%  '   R%  ,   z%     �%     �%     �%     �%      �%  �  &  �  �'  h   ^*  �   �*  z  �+  �  5-  �   �/     a0     z0  +   �0  @   �0     �0     	1     1     1  "   $1     G1     X1     q1     �1     �1  #   �1     �1      2     2     -2  9   B2  (   |2  (   �2  "   �2  8   �2  .   *3  3   Y3  
   �3     �3     �3     �3     �3     �3     �3     4     4     ,4     >4     O4     a4     t4     �4     �4     �4     �4     �4     �4  
   �4  %   	5     /5     65     B5     a5     u5     �5     �5  $   �5  '   �5  &   6  %   C6  %   i6  (   �6  (   �6  (   �6  G   
7  -   R7     �7  "   �7     �7  $   �7     8     &8  !   @8  $   b8  @   �8     �8     �8  %   �8     
9  
   9     &9     89     M9     g9     y9     �9     �9     �9     �9     �9     �9     �9     :  8   (:     a:     u:     �:     �:     �:     �:     �:     �:     ;     +;     3;     G;     O;     i;  %   n;     �;  )   �;     �;     �;     �;     <     <     <     #<     )<     :<  W   R<  F   �<  !   �<      =     4=     A=     O=     \=     j=     n=  	   w=     �=  +   �=  $   �=  (   �=  "   >  8   '>  $   `>  &   �>  :   �>  ,   �>  -   ?     B?     S?     i?     }?     �?     �?     �?     �?     �?  
   �?  (   �?  )   @  .   :@     i@     n@     �@     �@  "   �@     J   �   3   �   .   r                                  y      �       �   �   [   S   �       c   ,   @   �   l   )   �   �   O       H      �       �   �       �          �   q           o         2   �           *   /       '       �      �   �             $   Y   b   C   �   �       K   7   d      {   ~   X   z           �   �   >   V       h   k          5           `       �          <   R   �   0       6       \       j      �       (       �   �   
   s   B      }       %       �   !       :   �   w   f             &   |      L       Z   ^   ?   T   U   e       8      P   1   M   v   u       i   �   G   n            �       �   x           9   =   ]          _   �      F           -       W   �          p   	          #   4      D       +       �          t   �   �   Q          N      �   "   E   m   �           ;   I           A   a   g        -h --help            Show this help
    -V --version         Show version
    -D --browse-domains  Browse for browsing domains instead of services
    -a --all             Show all services, regardless of the type
    -d --domain=DOMAIN   The domain to browse in
    -v --verbose         Enable verbose mode
    -t --terminate       Terminate after dumping a more or less complete list
    -c --cache           Terminate after dumping all entries from the cache
    -l --ignore-local    Ignore local services
    -r --resolve         Resolve services found
    -f --no-fail         Don't fail if the daemon is not available
    -p --parsable        Output in parsable format
     -k --no-db-lookup    Don't lookup service types
    -b --dump-db         Dump service type database
 %s [options]

    -h --help            Show this help
    -s --ssh             Browse SSH servers
    -v --vnc             Browse VNC servers
    -S --shell           Browse both SSH and VNC
    -d --domain=DOMAIN   The domain to browse in
 %s [options] %s <host name ...>
%s [options] %s <address ... >

    -h --help            Show this help
    -V --version         Show version
    -n --name            Resolve host name
    -a --address         Resolve address
    -v --verbose         Enable verbose mode
    -6                   Lookup IPv6 address
    -4                   Lookup IPv4 address
 %s [options] %s <name> <type> <port> [<txt ...>]
%s [options] %s <host-name> <address>

    -h --help            Show this help
    -V --version         Show version
    -s --service         Publish service
    -a --address         Publish address
    -v --verbose         Enable verbose mode
    -d --domain=DOMAIN   Domain to publish service in
    -H --host=DOMAIN     Host where service resides
       --subtype=SUBTYPE An additional subtype to register this service with
    -R --no-reverse      Do not publish reverse entry with address
    -f --no-fail         Don't fail if the daemon is not available
 %s [options] <new host name>

    -h --help            Show this help
    -V --version         Show version
    -v --verbose         Enable verbose mode
 : All for now
 : Cache exhausted
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family Address: An unexpected D-Bus error occurred Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain Domain Name: E Ifce Prot %-*s %-20s Domain
 E Ifce Prot Domain
 Established under name '%s'
 Failed to add address: %s
 Failed to add service: %s
 Failed to add subtype '%s': %s
 Failed to connect to Avahi server: %s Failed to create address resolver: %s
 Failed to create browser for %s: %s Failed to create client object: %s
 Failed to create domain browser: %s Failed to create entry group: %s
 Failed to create host name resolver: %s
 Failed to create resolver for %s of type %s in domain %s: %s Failed to create simple poll object.
 Failed to parse address '%s'
 Failed to parse port number: %s
 Failed to query host name: %s
 Failed to query version string: %s
 Failed to read Avahi domain: %s Failed to register: %s
 Failed to resolve address '%s': %s
 Failed to resolve host name '%s': %s
 Failed to resolve service '%s' of type '%s' in domain '%s': %s
 Host Name Host name conflict
 Host name successfully changed to %s
 Initializing... Interface: Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resolve Service Resolve Service Host Name Resolve the host name of the selected service automatically before returning Resolve the selected service automatically before returning Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Name: Service Type Service Type: TXT TXT Data TXT Data: Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Domain... avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 empty execlp() failed: %s
 n/a service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: Avahi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-10-10 13:24+0200
PO-Revision-Date: 2013-11-20 09:58+0000
Last-Translator: Geert Warrink <geert.warrink@onsnet.nu>
Language-Team: Dutch (http://www.transifex.com/lennart/avahi/language/nl/)
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
     -h --help            Toon deze hulptekst
    -V --version         Toon versie
    -D --browse-domains  Browse voor domeinen in plaats van services
    -a -all             Toon alle services, ongeacht het type
    -d --domein=DOMEIN   Het te browsen domein
    -v --verbose         Zet breedsprakige mode aan
    -t --terminate       Beëindig na het dumpen van een min of meer complete lijst
    -c --cache           Beëindig na het dumpen van alle ingangen uit de cache
    -l --ignore-local    Negeer lokale services
    -r --resolve         Los alle gevonden services op
    -f --no-fail         Misluk niet als de daemon niet beschikbaar is
    -p --parsable        Output in ontleedbaar formaat
     -k --no-db-lookup    Zoek geen service types op
    -b --dump-db         Dump service type database
 %s [opties]

    -h --help           Toon deze hulptekst
    -s --ssh             Browse SSH servers
    -v --vnc             Browse VNC servers
    -S --shell           Browse zowel SSH als VNC
    -d --domain=DOMEIN   Het te browsen domein
 %s [opties] %s <hostnaam ...>
%s [opties] %s <adres ... >

    -h --help            Toon deze hulptekst
    -V --version         Toon versie
    -n --name            Op te lossen hostnaam
    -a --address         Op te lossen adres
    -v --verbose         Zet breedsprakige mode aan
    -6                   Zoek IPv6 adressen op
    -4                   Zoek IPv4 adressen op
 %s [opties] %s <naam><type><poort> [<txt ...>]
%s [opties] %s <hostnaam><adres>

    -h --help            Toon deze hulptekst
    -V --version         Toon versie
    -s --service         Publiceer service
    -a -address         Publiceer adres
    -v --verbose         Zet breedsprakige mode aan
    -d --domain=DOMEIN    Domein waarin service gepubliceerd wordt
    - H --host=DOMEIN     Host waarop service zich bevindt
       --subtype= SUBTYPE Een extra subtype om met deze service te registreren
    -R --no-reverse      Publiceer geen omgekeerde ingangen met adres
    -f --no-fail         Misluk niet als de daemon niet beschikbaar is
 %s [opties] <nieuwe hostnaam>

    -h --help            Toon deze hulptekst
    -V --version         Toon versie
    -v --verbose          Zet breedsprakige mode aan
 : Alles voor dit moment
 : Cache is vol
 <i>momenteel geen service geselecteerd.</i> Een met NULL afgesloten lijst van de service types om te browsen Toegang geweigerd Adres Adres familie Adres: Een onverwachte D-Bus fout trad op Avahi ontdekking Avahi SSH server browser Avahi VNC server browser Avahi zeroconf browser Avahi client mislukking: %s Avahi domein browser mislukking: %s Avahi oplossing mislukking: %s Verkeerd aantal argumenten
 Slechte toestand Browse service types Browse voor Zeroconf services beschikbaar op jouw netwerk Browse voor Zeroconf-enabled SSH servers Browse voor Zeroconf-enabled VNC servers Blader service type lijst is leeg! Browsen voor service type %s in domein %s is mislukt: %s Browsen voor services in het domein <b>%s</b>: Browsen voor services op het <b>lokale netwerk</b>: Browsen... Geannuleerd.
 Wijzig domein Kies SSH server Kies shell server Kies VNC server Cliënt fout, afsluiten: %s
 Verbinden met '%s'...
 DNS-fout: FORMERR DNS-fout: NOTAUTH DNS-fout: NOTIMP DNS-fout: NOTZONE DNS-fout: NXDOMAIN DNS-fout: NXRRSET DNS-fout: REFUSED DNS-fout: SERVFAIL DNS-fout: YXDOMAIN DNS-fout: YXRRSET Daemon verbinding mislukte Daemon draait niet Bureaublad Losgekoppeld, opnieuw aansluiten ...
 Domein Domeinnaam: E Ifce Prot %-*s %-20s domein
 E Ifce Prot domein
 Opgericht met de naam '%s'
 Adres toevoegen mislukte: %s
 Service toevoegen mislukte: %s
 Subtype '%s' toevoegen mislukte: %s
 Verbinden met Avahi server mislukte: %s NAdres oplosser aanmaken mislukte: %s
 Aanmaken browser voor %s mislukte: %s Cliënt object aanmaken mislukte: %s
 Aanmaken van domein browser mislukte: %s Aanmaken van  ingang groep mislukte: %s
 Hostnaam oplosser aanmaken mislukte: %s
 Aanmaken van oplosser voor %s van het type %s in domein %s mislukte: %s Aanmaken van eenvoudig poll object mislukte.
 Adres '%s' ontleden mislukte
 Poortnummer ontleden mislukte: %s
 Hostnaam bevragen mislukte: %s
 Versie string bevragen mislukte: %s
 Avahi domein lezen mislukte: %s Registreren mislukte: %s
 Adres '%s' oplossen mislukte: %s
 Hostnaam '%s' oplossen mislukte: %s
 Dervice '%s' van type '%s' oplossen in domein '%s' mislukte: %s
 Hostnaam Hostnaam conflict
 Hostnaam succesvol veranderd naar %s
 Initialiseren... Interface: Ongeldige DNS TTL Ongeldige DNS klasse Ongeldige DNS return code Ongeldig DNS type Ongeldige foutcode Ongeldige RDATA Ongeldig adres Ongeldig argument Ongeldige configuratie Ongeldige domeinnaam Ongeldige vlaggen Ongeldige hostnaam Ongeldige interface index Ongeldig aantal argumenten, precies een wordt verwacht.
 Ongeldige bewerking Ongeldige pakket Ongeldig poortnummer Ongeldige protocol specificatie Ongeldige record Ongeldige record sleutel Ongeldige servicenaam Ongeldige service subtype Ongeldig service type Is leeg Lokale naam botsing Locatie Geen geheugen beschikbaar Naam Naam botsing, kies nieuwe naam '%s'.
 Geen commando gegeven.
 Geen geschikt netwerkprotocol beschikbaar Niet gevonden Niet toegestaan Niet ondersteund OK OS fout Bewerking mislukte Poort Service oplossen Los service hostnaam op Loss de hostnaam van de geselecteerde service automatisch op voordat teruggekeerd wordt Los de geselecteerde service automatisch op voordat teruggekeerd wordt Bronrecord sleutel is een patroon Server versie: %s; Hostnaam: %s
 Service naam Service naam: Service type Service type: TXT TXT data TXT data: Terminal Het IP poortnummer van de opgeloste service De TXT data van de opgeloste service De adres familie voor hostnaam oplossing Het adres van de opgeloste service Het te browsen domein, of NULL voor het standaard domein De hostnaam van de opgeloste service Het doorgegeven object was niet geldig De gevraagde bewerking is ongeldig omdat deze overbodig is De service naam van de geselecteerde service Het service type van de geselecteerde service Time-out bereikt Te weinig argumenten
 Te veel argumenten
 Te veel clienten Te veel ingangen Te veel objecten Type Versie mismatch Wachten op daemon ...
 _Domein... avahi_domain_browser_new() mislukte: %s
 avahi_service_browser_new() mislukte: %s
 avahi_service_type_browser_new() mislukte: %s
 leeg execlp() mislukte: %s
 n.v.t. service_browser mislukte: %s
 service_type_browser mislukte: %s
 