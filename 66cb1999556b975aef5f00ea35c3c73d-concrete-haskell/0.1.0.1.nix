{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "concrete-haskell";
          version = "0.1.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "2016";
        maintainer = "tom@cs.jhu.edu";
        author = "Thomas Lippincott";
        homepage = "https://github.com/hltcoe";
        url = "";
        synopsis = "Library for the Concrete data format.";
        description = "Library for the Concrete data format.";
        buildType = "Simple";
      };
      components = {
        concrete-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.thrift
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.QuickCheck
            hsPkgs.vector
            hsPkgs.hashable
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.containers
          ];
        };
      };
    }