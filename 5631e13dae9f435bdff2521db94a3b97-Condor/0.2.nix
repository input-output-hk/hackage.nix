{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Condor";
          version = "0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "klangner@gmail.com";
        author = "Krzysztof Langner";
        homepage = "https://github.com/klangner/Condor";
        url = "";
        synopsis = "Information retrieval library";
        description = "Library for indexing and searching text documents";
        buildType = "Simple";
      };
      components = {
        Condor = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.text
          ];
        };
        exes = {
          condor = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.text
            ];
          };
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.containers
              hsPkgs.binary
              hsPkgs.text
            ];
          };
        };
      };
    }