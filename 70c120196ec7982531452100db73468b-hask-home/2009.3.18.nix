{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hask-home";
          version = "2009.3.18";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert 2006";
        maintainer = "Greg Heartsfield <scsibug@imap.cc>";
        author = "Bjorn Bringert";
        homepage = "http://gregheartsfield.com/hask-home";
        url = "";
        synopsis = "Generate homepages for cabal packages";
        description = "This program generates simple homepages for cabalized\nHaskell packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hask-home" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.regex-compat
              hsPkgs.network
              hsPkgs.hmarkup
              hsPkgs.xhtml
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.hsemail
              hsPkgs.parsec
            ];
          };
          "hask-home-upload" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
        };
      };
    }