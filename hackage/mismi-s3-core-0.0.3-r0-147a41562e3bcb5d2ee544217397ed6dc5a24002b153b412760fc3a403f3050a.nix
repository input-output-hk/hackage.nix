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
      identifier = { name = "mismi-s3-core"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nick Hibberd <nhibberd@gmail.com>";
      author = "Nick Hibberd";
      homepage = "https://github.com/nhibberd/mismi";
      url = "";
      synopsis = "AWS Library";
      description = "mismi-s3-core provides a set of data types around S3 concepts and\nuseful functions over them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mismi-p" or (errorHandler.buildDepError "mismi-p"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mismi-s3-core" or (errorHandler.buildDepError "mismi-s3-core"))
            (hsPkgs."mismi-p" or (errorHandler.buildDepError "mismi-p"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }