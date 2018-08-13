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
        name = "crdt";
        version = "6.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Yuriy Syrovetskiy, Nikolay Loginov; 2018 Yuriy Syrovetskiy";
      maintainer = "Yuriy Syrovetskiy <cblp@cblp.su>";
      author = "";
      homepage = "https://github.com/cblp/crdt#readme";
      url = "";
      synopsis = "Conflict-free replicated data types";
      description = "Definitions of CmRDT and CvRDT. Implementations for some classic CRDTs.";
      buildType = "Simple";
    };
    components = {
      "crdt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.network-info)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.crdt)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }