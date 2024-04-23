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
      identifier = { name = "happs-tutorial"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2008 Thomas Hartman";
      maintainer = "thomashartman1 at gmail dot com";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "A HAppS Tutorial that is is own demo";
      description = "A nice way to learn how to build web sites with HAppS";
      buildType = "Simple";
    };
    components = {
      exes = {
        "happs-tutorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HAppS-Server" or (errorHandler.buildDepError "HAppS-Server"))
            (hsPkgs."HAppS-Data" or (errorHandler.buildDepError "HAppS-Data"))
            (hsPkgs."HAppS-State" or (errorHandler.buildDepError "HAppS-State"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
          buildable = true;
        };
      };
    };
  }