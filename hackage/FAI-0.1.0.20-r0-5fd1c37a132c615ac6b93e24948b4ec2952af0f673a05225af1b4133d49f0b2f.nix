{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      enable-cuda = false;
    };
    package = {
      specVersion = "1.21";
      identifier = {
        name = "FAI";
        version = "0.1.0.20";
      };
      license = "LGPL-3.0-only";
      copyright = "(C) 2018 Johann Lee <me@qinka.pro>";
      maintainer = "me@qinka.pro";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/HaskellFAI";
      url = "";
      synopsis = "Haskell Foreign Accelerate Interface";
      description = "The haskell interface for foreign accelerate framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.inline-c)
        ];
        libs = pkgs.lib.optional (flags.enable-cuda) (pkgs."cudart");
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.FAI)
            (hsPkgs.inline-c)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }