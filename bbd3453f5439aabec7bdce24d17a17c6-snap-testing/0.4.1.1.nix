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
      specVersion = "1.8";
      identifier = {
        name = "snap-testing";
        version = "0.4.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/snap-testing";
      url = "";
      synopsis = "A library for BDD-style testing with the Snap Web Framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "snap-testing" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.io-streams)
          (hsPkgs.async)
          (hsPkgs.digestive-functors)
        ];
      };
    };
  }