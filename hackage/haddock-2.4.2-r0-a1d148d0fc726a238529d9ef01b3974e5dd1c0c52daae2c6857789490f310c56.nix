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
      specVersion = "1.2";
      identifier = { name = "haddock"; version = "2.4.2"; };
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
      "library" = { buildable = true; };
      exes = {
        "haddock" = {
          depends = ([
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ] ++ (pkgs.lib).optional (!flags.in-ghc-tree) (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))) ++ (if compiler.isGhc && (compiler.version).ge "6.9"
            then [
              (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }