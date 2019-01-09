{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ib-api"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bobbermani@gmail.com";
      author = "Robert Bermani";
      homepage = "https://github.com/rbermani/ib-api";
      url = "";
      synopsis = "An API for the Interactive Brokers Trading Workstation written in pure Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          ];
        };
      exes = {
        "ex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.ib-api)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            ];
          };
        };
      };
    }