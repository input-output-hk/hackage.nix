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
      identifier = { name = "hsc3-forth"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-forth";
      url = "";
      synopsis = "FORTH SUPERCOLLIDER";
      description = "FORTH SUPERCOLLIDER";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsc3-forth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."hsc3-db" or (errorHandler.buildDepError "hsc3-db"))
            (hsPkgs."hsc3-dot" or (errorHandler.buildDepError "hsc3-dot"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }