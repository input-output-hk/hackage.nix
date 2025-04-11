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
      specVersion = "2.4";
      identifier = { name = "termbox-bindings-hs"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2025 Mitchell Dalvi Rosen, Travis Staton";
      maintainer = "Mitchell Dalvi Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Dalvi Rosen, Travis Stagon";
      homepage = "https://github.com/awkward-squad/termbox";
      url = "";
      synopsis = "termbox bindings";
      description = "This package provides bindings to @termbox@, a simple C library for writing text-based user interfaces:\n<https://github.com/termbox/termbox>.\n\nSee also:\n\n* @<https://hackage.haskell.org/package/termbox-bindings-c termbox-bindings-c>@ for lower-level bindings.\n* @<https://hackage.haskell.org/package/termbox termbox>@ for higher-level bindings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."termbox-bindings-c" or (errorHandler.buildDepError "termbox-bindings-c"))
        ];
        buildable = true;
      };
    };
  }