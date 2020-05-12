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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "cabal2arch"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/cabal2arch";
      url = "";
      synopsis = "Create Arch Linux packages from Cabal packages";
      description = "Create Arch Linux packages from Cabal packages";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal2arch" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }