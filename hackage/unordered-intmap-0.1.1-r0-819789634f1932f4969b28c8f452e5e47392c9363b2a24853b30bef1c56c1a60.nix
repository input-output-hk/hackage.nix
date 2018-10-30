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
        name = "unordered-intmap";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Dmitry Ivanov";
      maintainer = "ethercrow@gmail.com";
      author = "Dmitry Ivanov";
      homepage = "https://github.com/ethercrow/unordered-intmap";
      url = "";
      synopsis = "A specialization of `HashMap Int v`";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "props" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.primitive)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.unordered-intmap)
          ];
        };
      };
    };
  }