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
        name = "errors-ext";
        version = "0.4.2";
      };
      license = "LicenseRef-Apache";
      copyright = "2017, 2018 Warlock <internalmike@gmail.com>";
      maintainer = "Warlock <internalmike@gmail.com>";
      author = "Warlock <internalmike@gmail.com>";
      homepage = "https://github.com/A1-Triard/errors-ext#readme";
      url = "";
      synopsis = "`bracket`-like functions for `ExceptT` over `IO` monad.";
      description = "Please see the README on GitHub at <https://github.com/A1-Triard/errors-ext#readme>";
      buildType = "Simple";
    };
    components = {
      "errors-ext" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "errors-ext-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.binary-ext)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.errors)
            (hsPkgs.errors-ext)
            (hsPkgs.exceptions)
            (hsPkgs.monad-control)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }