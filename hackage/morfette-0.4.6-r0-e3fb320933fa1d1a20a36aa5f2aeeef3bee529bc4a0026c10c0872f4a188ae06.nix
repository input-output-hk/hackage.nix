{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "morfette"; version = "0.4.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Grzegorz Chrupała <grzegorz.chrupala@gmail.com>";
      author = "Grzegorz Chrupała";
      homepage = "https://github.com/gchrupala/morfette";
      url = "";
      synopsis = "A tool for supervised learning of morphology";
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
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pretty)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.text)
            ];
          };
        };
      };
    }