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
      identifier = { name = "haskell-modbus"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jhickner@gmail.com";
      author = "Jason Hickner";
      homepage = "http://www.github.com/jhickner/haskell-modbus";
      url = "";
      synopsis = "A cereal-based parser for the Modbus protocol";
      description = "A cereal-based parser for the Modbus protocol";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
        ];
        buildable = true;
      };
    };
  }