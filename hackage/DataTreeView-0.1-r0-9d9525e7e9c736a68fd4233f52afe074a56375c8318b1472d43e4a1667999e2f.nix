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
      specVersion = "1.6";
      identifier = { name = "DataTreeView"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anotheraddress@gmx.de";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "A GTK widget for displaying arbitrary Data.Data.Data instances";
      description = "Screenshot: <http://i.imgur.com/5JlhG.png>\n\nExample use:\n\n> import DataTreeView\n> main = simpleView [([\"hello\",\"world\",error \"this works too\"],25)]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }