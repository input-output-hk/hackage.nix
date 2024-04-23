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
      identifier = { name = "dpkg"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2011 Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "";
      url = "";
      synopsis = "libdpkg bindings";
      description = "Haskell bindings to the libdpkg API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libdpkg" or (errorHandler.pkgConfDepError "libdpkg"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."dpkg" or (errorHandler.buildDepError "dpkg"))
          ];
          libs = [ (pkgs."dpkg" or (errorHandler.sysDepError "dpkg")) ];
          pkgconfig = [
            (pkgconfPkgs."libdpkg" or (errorHandler.pkgConfDepError "libdpkg"))
          ];
          buildable = true;
        };
      };
    };
  }