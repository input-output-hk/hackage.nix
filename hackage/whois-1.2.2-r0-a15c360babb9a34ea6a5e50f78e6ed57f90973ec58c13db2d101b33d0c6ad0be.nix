{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "whois";
        version = "1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "http://github.com/CodeBlock/whois-hs";
      url = "";
      synopsis = "WHOIS client library.";
      description = "Provides a simple client to return WHOIS information about\nIP addresses or hostnames.";
      buildType = "Simple";
    };
    components = {
      "whois" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.network)
        ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
    };
  }