{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cantor";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klangner@gmail.com";
        author = "Krzysztof Langner";
        homepage = "https://github.com/klangner/cantor";
        url = "";
        synopsis = "Application for analysis of java source code";
        description = "Cantor is application for analyzing software projects.\nThe goal of this application is to help developer understand source code of unknown project.\n\nCurrently implemented:\n\n* Find language the application is written in\n\n* Line Of Code metric.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cantor = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hxt
              hsPkgs.hxt-xpath
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.split
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.hxt
              hsPkgs.hxt-xpath
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.split
            ];
          };
        };
      };
    }