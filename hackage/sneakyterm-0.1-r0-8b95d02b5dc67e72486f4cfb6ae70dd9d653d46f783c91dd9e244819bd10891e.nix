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
      identifier = { name = "sneakyterm"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2014-2015 Philipp Middendorf";
      maintainer = "pmidden@secure.mailbox.org";
      author = "Philipp Middendorf";
      homepage = "https://github.com/pmiddend/sneakyterm";
      url = "";
      synopsis = "Tiny, declarative wrapper around ncurses";
      description = "`SneakyTerm` gives you 'MonadTerminal' which gives you two operations, 'tmRender' to render a list of tiles, and 'tmCharEvent' to wait for character input. A simple example:\n\n> main = do\n>   let viewport = rectFromOriginAndDim (V2 0 0) (V2 80 25)\n>   runTerminal viewport \$ do\n>     tmRender [Tile (V2 10 10) '@' (ColorPair Red Blue)]\n>     _ <- tmCharEvent\n>     return ()\n\nThis will render a red `@` at column 11, line 11, with blue background.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ncurses" or (errorHandler.buildDepError "ncurses"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          ];
        buildable = true;
        };
      };
    }