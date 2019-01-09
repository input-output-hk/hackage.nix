{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "morfette"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Grzegorz Chrupała <gchrupala@lsv.uni-saarland.de>";
      author = "Grzegorz Chrupała";
      homepage = "";
      url = "";
      synopsis = "Morfette: tool for supervised learning of morphology";
      description = "Morfette is a tool for supervised learning of inflectional\nmorphology. Given a corpus of sentences annotated with lemmas\nand morphological labels, and optionally a lexicon, morfette\nlearns how to morphologically analyse new sentences.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "morfette" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell98)
            (hsPkgs.pretty)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            ];
          };
        };
      };
    }