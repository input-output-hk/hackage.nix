{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cabal2ebuild"; version = "0.0.15.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "yet";
      url = "";
      synopsis = "make gentoo's .ebuild file from .cabal file";
      description = "> % ls\n> hoge.cabal ...\n> % cabal2ebuild\n> % ls\n> hoge.cabal hoge-0.1.2.3.ebuild ...\n>\n> % hackage2ebuild cabal2ebuild 0.0.15.8 -d ebuilds\n> % ls ebuilds\n> cabal2ebuild-0.0.15.8.ebuild";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "cabal2ebuild" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal2ebuild" or (errorHandler.buildDepError "cabal2ebuild"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "hackage2ebuild" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal2ebuild" or (errorHandler.buildDepError "cabal2ebuild"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            ];
          buildable = true;
          };
        };
      };
    }