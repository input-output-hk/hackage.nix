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
      identifier = { name = "cabalgraph"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/cabalgraph";
      url = "";
      synopsis = "Generate pretty graphs of module trees from cabal files";
      description = "Generate pretty graphs of module trees from cabal files\n\nGraph exposed modules from .cabal files in some directories:\n\n>   $ cabalgraph a b c d | dot -Tpng | xv -\n\nResults in a graph like: <http://code.haskell.org/~dons/images/dot.png>\n\nGraph exposed modules from a url:\n\n>   $ cabalgraph http://code.haskell.org/xmonad/xmonad.cabal | circo -Tpng | xv -\n\nResults in a graph like: <http://code.haskell.org/~dons/images/xmonad-dot.png>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabalgraph" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }