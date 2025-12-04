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
      identifier = { name = "termbox-bindings-c"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2025 Mitchell Dalvi Rosen, Travis Staton";
      maintainer = "Mitchell Dalvi Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Dalvi Rosen, Travis Staton";
      homepage = "https://github.com/awkward-squad/termbox";
      url = "";
      synopsis = "termbox bindings";
      description = "This package provides bindings to @termbox v1.1.4@, a simple C library for writing text-based user interfaces:\n<https://github.com/termbox/termbox>\n\nThe full source of @termbox v1.1.4@ is bundled; you do not need to install any system packages to use this library.\n\nSee also:\n\n* @<https://hackage.haskell.org/package/termbox-bindings-hs termbox-bindings-hs>@ for higher-level bindings.\n* @<https://hackage.haskell.org/package/termbox termbox>@ for even higher-level bindings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }