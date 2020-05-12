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
      specVersion = "1.2";
      identifier = { name = "multiplicity"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli ";
      homepage = "http://ui3.info/d/proj/multiplicity.html";
      url = "";
      synopsis = "Wrapper program for duplicity, adding config files";
      description = "Multiplicity is a configuration file driven wrapper\naround duplicity. It allows you to easily define\nbackup sets as config files and avoid long,\nrepetitive command lines.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "multiplicity" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fez-conf" or (errorHandler.buildDepError "fez-conf"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }