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
    flags = { in-ghc-tree = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haddock"; version = "2.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow, David Waern";
      maintainer = "David Waern <david.waern@gmail.com>";
      author = "Simon Marlow, David Waern";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "A documentation-generation tool for Haskell libraries";
      description = "Haddock is a documentation-generation tool for Haskell\nlibraries";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = if flags.in-ghc-tree then false else true; };
      exes = {
        "haddock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ] ++ (pkgs.lib).optional (!flags.in-ghc-tree) (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"));
          buildable = true;
          };
        };
      };
    }