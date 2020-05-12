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
      identifier = { name = "mxnet"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2017 Tao He";
      maintainer = "sighingnow@gmail.com";
      author = "Tao He";
      homepage = "http://github.com/sighingnow/mxnet-haskell#readme";
      url = "";
      synopsis = "MXNet interface in Haskell.";
      description = "MXNet interface in Haskell via CFFI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c2hs-extra" or (errorHandler.buildDepError "c2hs-extra"))
          ];
        libs = [ (pkgs."mxnet" or (errorHandler.sysDepError "mxnet")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }