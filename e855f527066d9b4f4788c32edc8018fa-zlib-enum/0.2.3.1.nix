{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "zlib-enum";
        version = "0.2.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Malte Sommerkorn <malte.sommerkorn@googlemail.com>";
      author = "Paulo Tanimoto <ptanimoto@gmail.com>";
      homepage = "http://github.com/maltem/zlib-enum";
      url = "";
      synopsis = "Enumerator interface for zlib compression";
      description = "zlib-enum is a stop-gap package to provide enumeratees for\nzlib compression/decompression.";
      buildType = "Simple";
    };
    components = {
      "zlib-enum" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.enumerator)
          (hsPkgs.zlib-bindings)
        ];
      };
      exes = {
        "zlib-enum-test" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.enumerator)
            (hsPkgs.zlib-bindings)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }