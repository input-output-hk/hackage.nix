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
      specVersion = "1.2";
      identifier = { name = "yi-vty"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "Jean-Philippe Bernardy";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor, helper package";
      description = "This is a dummy package: do not install it! \"cabal install yi -fvty\" is what you want.";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  }