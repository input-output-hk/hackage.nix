{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "js-flot"; version = "0.8.3"; };
      license = "MIT";
      copyright = "Neil Mitchell 2014";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/js-flot#readme";
      url = "";
      synopsis = "Obtain minified flot code";
      description = "This package bundles the minified <http://www.flotcharts.org/ Flot> code\n(a jQuery plotting library) into a Haskell package,\nso it can be depended upon by Cabal packages. The first three components of\nthe version number match the upstream flot version. The package is designed\nto meet the redistribution requirements of downstream users (e.g. Debian).";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "js-flot-test" = { depends = [ (hsPkgs.base) (hsPkgs.HTTP) ]; };
        };
      };
    }