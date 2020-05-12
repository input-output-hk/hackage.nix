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
      identifier = { name = "bindings-lxc"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nickolay.kudasov@gmail.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/fizruk/bindings-lxc";
      url = "";
      synopsis = "Direct Haskell bindings to LXC (Linux containers) C API.";
      description = "The package provides direct bindings to LXC C API through @bindings-dsl@.\nFor high-level Haskell LXC API see <http://hackage.haskell.org/package/lxc lxc package>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          ];
        libs = [ (pkgs."lxc" or (errorHandler.sysDepError "lxc")) ];
        buildable = true;
        };
      };
    }