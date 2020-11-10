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
      specVersion = "2.4";
      identifier = { name = "uusi"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 berberman";
      maintainer = "berberman <1793913507@qq.com>";
      author = "berberman";
      homepage = "https://github.com/berberman/uusi";
      url = "";
      synopsis = "Remove all version constraints of dependencies in .cabal file";
      description = "@uusi@ is a command-line program to remove all version constraints of dependencies in .cabal files.\nIt is used in distribution packaging because @--allow-newer@ is not present when calling @Setup.hs@\ninstead of cabal-install.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "uusi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }