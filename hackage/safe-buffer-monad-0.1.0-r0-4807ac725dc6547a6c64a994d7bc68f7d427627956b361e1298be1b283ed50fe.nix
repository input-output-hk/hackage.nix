{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "safe-buffer-monad";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Diogo Castro";
      maintainer = "dc@diogocastro.com";
      author = "Diogo Castro";
      homepage = "https://github.com/dcastro/safe-buffer-monad#readme";
      url = "";
      synopsis = "A monadic buffer resilient to exceptions";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.safe-buffer-monad)
            (hsPkgs.safe-exceptions)
            (hsPkgs.stm)
            (hsPkgs.unliftio)
          ];
        };
      };
    };
  }