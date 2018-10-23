{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bits-conduit";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "";
      url = "";
      synopsis = "Bitstream support for Conduit";
      description = "Bitstream support for Conduit";
      buildType = "Simple";
    };
    components = {
      "bits-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
        ];
      };
      tests = {
        "bits-conduit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.bits-conduit)
          ];
        };
      };
      benchmarks = {
        "bits-conduit-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.random)
            (hsPkgs.criterion)
            (hsPkgs.bits-conduit)
          ];
        };
      };
    };
  }