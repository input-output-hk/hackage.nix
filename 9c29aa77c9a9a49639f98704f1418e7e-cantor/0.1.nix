{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cantor";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klangner@gmail.com";
        author = "Krzysztof Langner";
        homepage = "https://github.com/klangner/cantor";
        url = "";
        synopsis = "Analiza Java source code";
        description = "Application for analyzing Java source code";
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
              hsPkgs.gtk
              hsPkgs.filepath
              hsPkgs.parsec
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
            ];
          };
        };
      };
    }