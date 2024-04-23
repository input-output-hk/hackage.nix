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
      specVersion = "1.12";
      identifier = { name = "double-x-encoding"; version = "1.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "adrian@feram.io";
      author = "Adrian Sieber";
      homepage = "https://github.com/Airsequel/double-x-encoding#readme";
      url = "";
      synopsis = "Encoding scheme to encode any Unicode string with only [0-9a-zA-Z_]";
      description = "Double-X-Encoding is an encoding scheme to encode any Unicode string\nwith only characters from [0-9a-zA-Z_].\nTherefore it's quite similar to URL percent-encoding.\nIt's especially useful for GraphQL ID generation,\nas it includes support for encoding leading digits and double underscores.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "double-x-encoding-test" = {
          depends = [
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."double-x-encoding" or (errorHandler.buildDepError "double-x-encoding"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }