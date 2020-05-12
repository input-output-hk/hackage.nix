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
      identifier = { name = "located-monad-logger"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 MailOnline";
      maintainer = "pkogan@gmail.com";
      author = "Pavel Kogan";
      homepage = "https://github.com/MailOnline/located-monad-logger#readme";
      url = "";
      synopsis = "Location-aware logging without Template Haskell";
      description = "This library builds on monad-logger\nto provide logging functions\nwith automatic source locations.\n\nIt does so using the GHC CallStack mechanism,\ninstead of Template Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }