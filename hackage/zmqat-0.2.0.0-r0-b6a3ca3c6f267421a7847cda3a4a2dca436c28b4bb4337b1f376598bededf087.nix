{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "zmqat"; version = "0.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral <koral at mailoo dot org>";
      author = "koral <koral at mailoo dot org>";
      homepage = "";
      url = "";
      synopsis = "A socat-like tool for zeromq library";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zmqat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.optparse-applicative)
            (hsPkgs.semigroups)
            (hsPkgs.zeromq4-haskell)
            ];
          };
        };
      };
    }