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
      identifier = { name = "basement"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez";
      maintainer = "vincent@snarc.org";
      author = "";
      homepage = "https://github.com/haskell-foundation/foundation";
      url = "";
      synopsis = "Foundation scrap box of array & string";
      description = "Foundation most basic primitives without any dependencies";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        buildable = true;
      };
    };
  }