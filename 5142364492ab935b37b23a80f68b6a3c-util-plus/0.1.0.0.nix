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
        name = "util-plus";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 factis research GmbH";
      maintainer = "mail@athiemann.net";
      author = "factis research GmbH";
      homepage = "https://github.com/factisresearch/opensource-mono#readme";
      url = "";
      synopsis = "A collection of commonly used utils";
      description = "A collection of commonly used util functions for basic libaries";
      buildType = "Simple";
    };
    components = {
      "util-plus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.array)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "util-plus-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.util-plus)
          ];
        };
      };
    };
  }