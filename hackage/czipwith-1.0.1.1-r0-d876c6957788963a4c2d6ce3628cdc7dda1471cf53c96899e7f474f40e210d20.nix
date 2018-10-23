{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "czipwith";
        version = "1.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Lennart Spitzner";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/czipwith/";
      url = "";
      synopsis = "CZipWith class and deriving via TH";
      description = "A typeclass similar to Data.Distributive, but for\ndata parameterised with a type constructor. The name\ncomes from the resemblance of its method to the regular\nzipWith function. The abstraction is useful for example\nfor program config handling.";
      buildType = "Simple";
    };
    components = {
      "czipwith" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.czipwith)
            (hsPkgs.base)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }