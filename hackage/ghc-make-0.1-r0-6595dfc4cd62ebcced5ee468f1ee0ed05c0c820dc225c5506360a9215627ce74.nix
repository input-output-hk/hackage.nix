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
      specVersion = "1.8";
      identifier = { name = "ghc-make"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2013";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/ghc-make#readme";
      url = "";
      synopsis = "Accelerated version of ghc --make";
      description = "The @ghc-make@ program can be used as an alternative to @ghc --make@. When the build has some\nwork to do it will perform slower than @ghc --make@ alone. When there is no work to do, the build\nwill run faster, sometimes significantly so.\n\nSee the readme for full details <https://github.com/ndmitchell/ghc-make#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-make" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          ];
          buildable = true;
        };
      };
    };
  }