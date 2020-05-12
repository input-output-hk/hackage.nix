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
      identifier = { name = "hdbc-aeson"; version = "0.1.3.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/hdbc-aeson";
      url = "";
      synopsis = "Deserialize from HDBC rows to FromJSON instances";
      description = "Deserialize from HDBC rows to FromJSON instances ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }