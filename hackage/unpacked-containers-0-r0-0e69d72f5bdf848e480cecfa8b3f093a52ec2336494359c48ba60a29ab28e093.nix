{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "unpacked-containers";
        version = "0";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2017-2018 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/unpacked-containers/";
      url = "";
      synopsis = "Unpacked containers via backpack";
      description = "This backpack mixin package supplies unpacked sets and maps exploiting backpack's ability to unpack through signatures.";
      buildType = "Simple";
    };
    components = {
      "unpacked-containers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.utils)
        ];
      };
      sublibs = {
        "utils" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
          ];
        };
        "example" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
      exes = {
        "unpacked-set-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unpacked-containers)
            (hsPkgs.example)
          ];
        };
      };
    };
  }