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
      identifier = { name = "assert"; version = "0.0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU";
      maintainer = "assert@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/assert";
      url = "";
      synopsis = "Helpers for Control.Exception.assert";
      description = "GHC supports compile-time toggling of run-time assertions via the\n@-fignore-asserts@ flag, which only effects a behavioural change in\n'Control.Exception.assert'. Furthermore the reported location only gives\nthe use site of the aforementioned, making it difficult to abstract over\nand hence cumbersome to use.\n\nThis package aims to make assertions more convenient, and also provides\na rule to rewrite assertions to 'id' when @-fignore-asserts@ is used.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "rewrite" = {
          depends = [
            (hsPkgs."assert" or (errorHandler.buildDepError "assert"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."system-posix-redirect" or (errorHandler.buildDepError "system-posix-redirect"))
          ];
          buildable = true;
        };
      };
    };
  }