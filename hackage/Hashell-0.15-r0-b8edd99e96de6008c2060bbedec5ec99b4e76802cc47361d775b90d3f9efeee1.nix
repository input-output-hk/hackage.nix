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
      specVersion = "0";
      identifier = {
        name = "Hashell";
        version = "0.15";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "luis@arjox.org";
      author = "Luis Francisco Araujo";
      homepage = "";
      url = "";
      synopsis = "Simple shell written in Haskell";
      description = "A simple shell written in Haskell; through the GHC API, it allows\nevaluation of Haskell expressions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hashell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.haskell98)
            (hsPkgs.readline)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
            (hsPkgs.process)
            (hsPkgs.ghc)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }