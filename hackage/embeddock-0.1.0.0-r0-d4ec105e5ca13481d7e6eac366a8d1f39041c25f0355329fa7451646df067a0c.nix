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
      identifier = { name = "embeddock"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "https://github.com/nushio3/embeddock";
      url = "";
      synopsis = "In Haddock documentation embed the values from the same module";
      description = "embeddock is a Haskell source-code preprocessor.\nIt allows you to embed computer-generated\nvalues in the documentation.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "embeddock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."her-lexer" or (errorHandler.buildDepError "her-lexer"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }