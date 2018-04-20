{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "morfette";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Grzegorz Chrupała <gchrupala@lsv.uni-saarland.de>";
        author = "Grzegorz Chrupała";
        homepage = "http://sites.google.com/site/morfetteweb/";
        url = "";
        synopsis = "A tool for supervised learning of morphology";
        description = "Morfette is a tool for supervised learning of inflectional\nmorphology. Given a corpus of sentences annotated with lemmas\nand morphological labels, and optionally a lexicon, morfette\nlearns how to morphologically analyse new sentences.";
        buildType = "Simple";
      };
      components = {
        exes = {
          morfette = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell98
              hsPkgs.pretty
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }