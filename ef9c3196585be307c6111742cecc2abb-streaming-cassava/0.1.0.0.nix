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
        name = "streaming-cassava";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Cassava support for the streaming ecosystem";
      description = "Stream values to\\/from CSV using Cassava.\n\nSupport is available for both named and \\\"plain\\\" data types,\noptional header support and option handling.";
      buildType = "Simple";
    };
    components = {
      "streaming-cassava" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.mtl)
          (hsPkgs.streaming)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "roundtrip" = {
          depends  = [
            (hsPkgs.streaming-cassava)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.streaming)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }