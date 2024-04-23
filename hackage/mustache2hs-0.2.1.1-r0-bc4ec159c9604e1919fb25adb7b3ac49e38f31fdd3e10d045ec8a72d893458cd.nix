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
      identifier = { name = "mustache2hs"; version = "0.2.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "http://github.com/singpolyma/mustache2hs";
      url = "";
      synopsis = "Utility to generate Haskell code from Mustache templates";
      description = "This utility takes in Haskell records (single data constructor only)\nand a list of mustache template and record name pairs, and generates\nHaskell code for functions that take an escape function and one of\nthe records, and returns a 'Data.Text.Lazy.Builder.Builder'.\n\nThis allows most records to be used as context for rendering a\ntemplate, and gives GHC the ability to typecheck the template's use of\nrecord fields at compile time.  It also means your application does\nnot need to be reading template files off disk in production.\n\nUsage example:\n\n> mustache2hs -m Records.hs main.mustache SomeRec sub.mustache OtherRec\n\nA full example is in the git repository.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mustache2hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }