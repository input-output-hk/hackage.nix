{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bake";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2014";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/bake#readme";
      url = "";
      synopsis = "Continuous integration library.";
      description = "Used for large scale continuous integration.\nNOT READY FOR USE BY ANYONE - HALF THE FUNCTIONS ARE UNDEFINED!";
      buildType = "Simple";
    };
    components = {
      "bake" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.shake)
        ];
      };
    };
  }