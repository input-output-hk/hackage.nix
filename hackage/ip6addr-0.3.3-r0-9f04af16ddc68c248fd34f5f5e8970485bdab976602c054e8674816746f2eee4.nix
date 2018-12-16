{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ip6addr";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michel Boucey <michel.boucey@gmail.com>";
      author = "Michel Boucey <michel.boucey@gmail.com>";
      homepage = "http://www.cybervisible.fr/ip6addr";
      url = "";
      synopsis = "Command-line tools to deal with IPv6 Addresses text representation";
      description = "ip6addr consists of two command-line tools: ip6addrcan which filters IPv6 addresses parsed against RFC 4291 and canonized them in conformation with RFC 5952. By default, ip6addrcan outputs only validated inputs, i.e. IPv6 addresses, removing CIDR suffix if necessary. Already compressed IPv6 adresses are recomputed. -e option throws out discarded inputs to stderr (which have of course to be redirected). The second command-line tool, ip6addrgen, generates random IPv6 adresses. -p option allows to provide a prefix to all IPv6 adresses to generate. -n option allows to provide the amount of IPv6 addresses to generate. Outputted IPv6 addresses have no more to be pipelined through ip6addrcan to be canonized.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ip6addrcan" = {
          depends = [ (hsPkgs.base) ];
        };
        "ip6addrgen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
          ];
        };
      };
    };
  }