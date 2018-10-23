{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ip6addr";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michel Boucey <michel.boucey@gmail.com>";
      author = "Michel Boucey <michel.boucey@gmail.com>";
      homepage = "http://www.cybervisible.fr/ip6addr";
      url = "";
      synopsis = "Command line tool that filters parsed IPv6 Addresses against RFC 4291";
      description = "ip6addr is a command line tool for filtering IPv6 addresses parsed against RFC 4291. By default, ip6addr outputs only validated inputs, i.e. IPv6 addresses. Option -e throws out discarded inputs to stderr, that have to be redirected.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ip6addr" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }