{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "doctest-discover";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "karun012@gmail.com";
        author = "Karun Ramakrishnan";
        homepage = "";
        url = "";
        synopsis = "Easy way to run doctests via cabal";
        description = "This version is for dev purposes only. A new version will be uploaded soon";
        buildType = "Simple";
      };
      components = {
        exes = {
          doctest-discover = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.temporary
            ];
          };
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }