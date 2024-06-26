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
      identifier = { name = "pipes-parse"; version = "2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Parsing infrastructure for the pipes ecosystem";
      description = "@pipes-parse@ builds upon the @pipes@ library to provide shared\nparsing idioms and utilities:\n\n* /Perfect Streaming/: Program in a list-like style in constant memory\n\n* /Leftovers/: Save unused input for later consumption\n\n* /Connect and Resume/: Use @StateT@ to save unused input for later\n\n* /Termination Safety/: Detect and recover from end of input\n\n@Pipes.Parse@ contains the full documentation for this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }