{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "cabal-upload";
          version = "0.2";
        };
        license = "BSD-4-Clause";
        copyright = "2007 Bjorn Bringert <bjorn@bringert.net>";
        maintainer = "Bjorn Bringert";
        author = "Bjorn Bringert";
        homepage = "";
        url = "";
        synopsis = "Command-line tool for uploading packages to Hackage";
        description = "This is a command-line tool program for uploading packages to the Hackage package database.";
        buildType = "Custom";
      };
      components = {
        exes = {
          cabal-upload = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.Cabal
              hsPkgs.HTTP
            ];
          };
        };
      };
    }