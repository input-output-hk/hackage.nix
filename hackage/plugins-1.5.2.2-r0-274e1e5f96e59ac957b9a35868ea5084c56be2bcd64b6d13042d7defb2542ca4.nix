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
      identifier = { name = "plugins"; version = "1.5.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@seereason.com>";
      author = "Don Stewart 2004..2010";
      homepage = "http://patch-tag.com/r/stepcut/plugins";
      url = "";
      synopsis = "Dynamic linking for Haskell and C objects";
      description = "Dynamic linking and runtime evaluation of Haskell,\nand C, including dependency chasing and package resolution.\n\nDescribed in the papers:\n* /Plugging Haskell In/, <http://cgi.cse.unsw.edu.au/~sseefried/files/papers/hs-plugins.pdf>\n* /Dynamic Applications from the Ground Up/, <http://www.cse.unsw.edu.au/~dons/papers/PSSC04.html>\n* /Dynamic Extension of Typed Functional Languages/.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2") (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"));
        buildable = true;
        };
      };
    }