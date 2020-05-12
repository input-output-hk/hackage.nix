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
      identifier = { name = "hslinks"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Resolves links to Haskell identifiers.";
      description = "A simple utility program that resolves links to Haskell identifiers in Markdown-style text.\nThis is useful if you want to maintain documentation of a Haskell program or library outside\nthe source code but still have links the Haddock-generated API documentation.\n\nFor usage, see <https://github.com/hanshoglund/hslinks>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hslinks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            ];
          buildable = true;
          };
        };
      };
    }