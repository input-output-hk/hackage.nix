{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "quickcheck-regex";
          version = "0.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "Audrey Tang 2014 (CC0)";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "http://github.com/audreyt/quickcheck-regex/";
        url = "";
        synopsis = "Generate regex-constrained strings for QuickCheck";
        description = "Generate regex-constrained strings for QuickCheck";
        buildType = "Simple";
      };
      components = {
        quickcheck-regex = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.regex-genex
            hsPkgs.regex-tdfa
            hsPkgs.containers
          ];
        };
      };
    }