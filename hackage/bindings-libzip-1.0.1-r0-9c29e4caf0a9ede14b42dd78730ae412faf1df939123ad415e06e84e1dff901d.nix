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
    flags = { nopkgconfig = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "bindings-libzip"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/astanin/hs-libzip/";
      url = "";
      synopsis = "Low level bindings to libzip.";
      description = "This package provides low-level bindings to libzip (v1.0.1) library.\nFor higher-level interface please use LibZip package:\n<http://hackage.haskell.org/package/LibZip>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        libs = pkgs.lib.optionals (flags.nopkgconfig) [
          (pkgs."zip" or (errorHandler.sysDepError "zip"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
        ];
        pkgconfig = pkgs.lib.optional (!flags.nopkgconfig) (pkgconfPkgs."libzip" or (errorHandler.pkgConfDepError "libzip"));
        buildable = true;
      };
    };
  }