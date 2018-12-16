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
        name = "multilinear";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Artur M. Brodzki";
      maintainer = "artur@brodzki.org";
      author = "Artur M. Brodzki";
      homepage = "https://github.com/ArturB/multilinear#readme";
      url = "";
      synopsis = "Comprehensive and efficient (multi)linear algebra implementation.";
      description = "Comprehensive and efficient (multi)linear algebra implementation, based on generic tensor formalism and concise Ricci-Curbastro index syntax. More information available on GitHub: <https://github.com/ArturB/multilinear#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.statistics)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "all" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.generic-random)
            (hsPkgs.multilinear)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
      benchmarks = {
        "memory" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.multilinear)
            (hsPkgs.weigh)
          ];
        };
        "profile" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.multilinear)
          ];
        };
        "time" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.multilinear)
          ];
        };
      };
    };
  }