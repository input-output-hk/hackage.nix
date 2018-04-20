{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "condor";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klangner@gmail.com";
        author = "Krzysztof Langner";
        homepage = "https://github.com/klangner/Condor";
        url = "";
        synopsis = "Information retrieval library";
        description = "An Information Retrieval (IR) library which consists of the following components:\n\n* Search - for indexing and searching text documents.\nCheck \"Condor.Search.Index\" for API information\n\n* Readers for reading documents from disk. Check \"Condor.Reader.Text\" folder text reader.";
        buildType = "Simple";
      };
      components = {
        condor = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.glider-nlp
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
              hsPkgs.glider-nlp
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
              hsPkgs.glider-nlp
            ];
          };
        };
      };
    }