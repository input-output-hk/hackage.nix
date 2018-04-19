{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ip6addr";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michel Boucey <michel.boucey@gmail.com>";
        author = "Michel Boucey <michel.boucey@gmail.com>";
        homepage = "http://www.cybervisible.fr/ip6addr";
        url = "";
        synopsis = "Command-line tools to filter parsed IPv6 Addresses against RFC 4291 and generate random IPv6 adresses";
        description = "ip6addr consists of two command-line tools: ip6addrval which filters IPv6 addresses parsed against RFC 4291. By default, ip6addrval outputs only validated inputs, i.e. IPv6 addresses, removing CIDR suffix if necessary. -e option throws out discarded inputs to stderr (which have of course to be redirected). The second command-line tool, ip6addrgen, generates random IPv6 adresses. -p option allows to provide a prefix to all IPv6 adresses to generate. -n option allows to provide the amount of IPv6 addresses to generate.";
        buildType = "Simple";
      };
      components = {
        exes = {
          ip6addrval = {
            depends  = [ hsPkgs.base ];
          };
          ip6addrgen = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
            ];
          };
        };
      };
    }