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
      specVersion = "1.6";
      identifier = { name = "zeroth"; version = "2009.6.23.3"; };
      license = "BSD-3-Clause";
      copyright = "2005-2008 Lemmih <lemmih@gmail.com>, 2009 Robin Green <greenrd@greenrd.org>";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "ZeroTH - remove unnecessary TH dependencies";
      description = "TemplateHaskell is fairly useful for generating new\nHaskell code. This, however, can incur a dependency on\nTH on subsequent uses where none theoretically should exist.\nZeroTH solves this by scanning a file for top-level TH\ndeclarations, evaluates them, removes TH imports, and outputs\nthe resulting code.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."hskeleton" or (errorHandler.buildDepError "hskeleton"))
          (hsPkgs."hskeleton" or (errorHandler.buildDepError "hskeleton"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."monoid-record" or (errorHandler.buildDepError "monoid-record"))
          (hsPkgs."monoid-record" or (errorHandler.buildDepError "monoid-record"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
      exes = {
        "zeroth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."hskeleton" or (errorHandler.buildDepError "hskeleton"))
            (hsPkgs."hskeleton" or (errorHandler.buildDepError "hskeleton"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            (hsPkgs."monoid-record" or (errorHandler.buildDepError "monoid-record"))
            (hsPkgs."monoid-record" or (errorHandler.buildDepError "monoid-record"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }