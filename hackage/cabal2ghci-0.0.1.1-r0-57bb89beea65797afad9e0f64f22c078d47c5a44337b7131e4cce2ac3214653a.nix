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
      identifier = { name = "cabal2ghci"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Hiromi ISHII (c) 2012-2013";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "A tool to generate .ghci file from .cabal";
      description = "This is the tool to automatically generate `.ghci` file and `.stylish-haskell.yaml` file from `.cabal`. It currently supports to handle Language Pragmas and hs-src-dirs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal2ghci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."stylish-haskell" or (errorHandler.buildDepError "stylish-haskell"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }