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
        name = "taco";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/taco-hs#readme";
      url = "";
      synopsis = "Tensor Algebra COmpiler";
      description = "Types and a compiler for tensor expressions.";
      buildType = "Simple";
    };
    components = {
      "taco" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.taco)
          ];
        };
      };
    };
  }