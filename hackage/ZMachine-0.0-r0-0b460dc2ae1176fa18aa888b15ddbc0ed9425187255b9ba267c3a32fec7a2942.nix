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
      specVersion = "1.0";
      identifier = { name = "ZMachine"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Samuel Bronson <naesten@gmail.com>";
      author = "Samuel Bronson";
      homepage = "";
      url = "";
      synopsis = "A Z-machine interpreter";
      description = "ZMachine is a Z-machine (Infocom's interactive fiction VM) interpreter\nwhich currently needs attention to its UI rather badly. It uses Gtk2Hs,\nbut it just goes down hill from there. Help welcome!\n\nThe Darcs repository can be found at <http://naesten.dyndns.org:8080/repos/ZMachine>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "zmachine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }