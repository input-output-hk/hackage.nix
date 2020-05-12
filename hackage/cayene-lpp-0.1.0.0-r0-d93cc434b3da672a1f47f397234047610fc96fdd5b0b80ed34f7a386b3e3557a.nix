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
      specVersion = "1.10";
      identifier = { name = "cayene-lpp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "https://github.com/sorki/cayene-lpp";
      url = "";
      synopsis = "Cayenne Low Power Payload";
      description = "Cayenne Low Power Payload format encoding and decoding";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."timerep" or (errorHandler.buildDepError "timerep"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "cayene-lpp-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cayene-lpp" or (errorHandler.buildDepError "cayene-lpp"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }