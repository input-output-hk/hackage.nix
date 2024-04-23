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
      identifier = { name = "Lazy-Pbkdf2"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Marcus Ofenhed <marcus@conditionraise.se>";
      author = "Marcus Ofenhed <marcus@conditionraise.se>";
      homepage = "";
      url = "";
      synopsis = "Lazy PBKDF2 generator.";
      description = "A PBKDF2 generator that generates a lazy ByteString\nof PRNG data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
      tests = {
        "Known-answer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
          buildable = true;
        };
      };
    };
  }