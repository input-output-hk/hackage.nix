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
        name = "matrices";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "native matrix based on vector";
      description = "This library provide the APIs for creating, indexing,\nmodifying matrices (2d arrays), including dense and\nsparse representations. The underling data\nstructure is vectors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.matrices)
            (hsPkgs.vector)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }