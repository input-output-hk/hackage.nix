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
      specVersion = "1.10";
      identifier = {
        name = "tld";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dev@jamesparker.me";
      author = "James Parker";
      homepage = "";
      url = "";
      synopsis = "This project separates subdomains, domains, and top-level-domains from URLs.";
      description = "This project separates subdomains, domains, and top-level-domains from URLs. At compile-time, it parses a list of top-level-domains from `data/tld.dat`. This list comes from `http://mxr.mozilla.org/mozilla/source/netwerk/dns/src/effective_tld_names.dat?raw=1`. This package most likely isn't perfect, especially when handling unicode characters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.network-uri)
          (hsPkgs.text)
        ];
      };
      tests = {
        "parser-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.tld)
          ];
        };
      };
    };
  }