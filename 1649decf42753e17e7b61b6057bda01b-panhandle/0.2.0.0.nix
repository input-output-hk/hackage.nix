{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "panhandle";
          version = "0.2.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "chriswarbo@gmail.com";
        author = "Chris Warburton";
        homepage = "http://chriswarbo.net/projects/activecode";
        url = "";
        synopsis = "Pandoc filter to unwrap nested blocks";
        description = "Pandoc filter to splice together nested documents";
        buildType = "Simple";
      };
      components = {
        panhandle = {
          depends  = [
            hsPkgs.base
            hsPkgs.pandoc
            hsPkgs.pandoc-types
            hsPkgs.syb
          ];
        };
        exes = {
          panhandle = {
            depends  = [
              hsPkgs.base
              hsPkgs.panhandle
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.panhandle
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.lazysmallcheck2012
              hsPkgs.tagged
              hsPkgs.containers
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.derive
              hsPkgs.syb
              hsPkgs.aeson
            ];
          };
        };
      };
    }