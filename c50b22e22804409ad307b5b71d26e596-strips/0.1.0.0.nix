{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "strips";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Yuji Kamiya";
      maintainer = "y.kamiya0@gmail.com";
      author = "Yuji Kamiya";
      homepage = "https://github.com/y-kamiya/strips-haskell#readme";
      url = "";
      synopsis = "resolver using strips algorithm";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "strips" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.strips)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }