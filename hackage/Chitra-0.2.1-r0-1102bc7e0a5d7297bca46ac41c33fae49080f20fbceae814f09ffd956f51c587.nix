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
      identifier = { name = "Chitra"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ckkashyap@gmail.com";
      author = "C.K.Kashyap";
      homepage = "https://github.com/ckkashyap/Chitra";
      url = "";
      synopsis = "A platform independent mechanism to render graphics using vnc.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Chitra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }