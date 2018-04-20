{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "doctest-discover";
          version = "0.1.0.7";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "karun012@gmail.com";
        author = "Karun Ramakrishnan";
        homepage = "http://github.com/karun012/doctest-discover";
        url = "";
        synopsis = "Easy way to run doctests via cabal";
        description = "doctest-discover provides an easy way to run doctests via cabal";
        buildType = "Simple";
      };
      components = {
        doctest-discover = {
          depends  = [
            hsPkgs.base
            hsPkgs.doctest
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.aeson
            hsPkgs.bytestring
          ];
        };
        exes = {
          doctest-discover = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest-discover
              hsPkgs.doctest
            ];
          };
        };
      };
    }