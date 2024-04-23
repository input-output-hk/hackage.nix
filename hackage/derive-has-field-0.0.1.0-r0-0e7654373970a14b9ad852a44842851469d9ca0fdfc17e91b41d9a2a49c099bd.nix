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
      identifier = { name = "derive-has-field"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "Barry Moore II";
      maintainer = "chiroptical@gmail.com";
      author = "Barry Moore II";
      homepage = "https://github.com/chiroptical/snail#readme";
      url = "";
      synopsis = "Derive HasField instances with Template Haskell";
      description = "A Template Haskell function to derive HasField instances to utilize OverloadedRecordDot more effectively.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
        ];
        buildable = true;
      };
      tests = {
        "derive-has-field-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive-has-field" or (errorHandler.buildDepError "derive-has-field"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          ];
          buildable = true;
        };
      };
    };
  }