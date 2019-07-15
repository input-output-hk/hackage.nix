{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "symantic-xml"; version = "1.0.0.20190223"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-xml@autogeree.net>";
      author = "Julien Moutinho <julm+symantic-xml@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Library for reading, validating and writing a subset of the XML format.";
      description = "Symantics for an approximative implementation\nof XML (eXtensible Markup Language) and RNC (RelaxNG Compact).\n\nMotivation: Other Haskell libraries do not fit my needs or are too heavy/complex.\nI like the principle to parse XML using some symantics,\nwhich can both generate a Megaparsec parser to validate the XML tree,\nand a RNC rendition of the schema it validates.\n\nDISCLAMER: My life being's too short, I'm NOT burning my brain\non seriously conforming to the too complex XML and RNC formats.\nStill I try to respect a vague subset of those,\nunless it makes the code more complex than I am comfortable with.\n\nWARNING: It's currently using an old symantic approach,\nnot the one developped in <https://hackage.haskell.org/package/symantic-http symantic-http>.\nThis may change when I'll get to it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hxt-charproperties)
          (hsPkgs.megaparsec)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.treeseq)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "symantic-xml-test" = {
          depends = [
            (hsPkgs.symantic-xml)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.megaparsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.treeseq)
            ];
          };
        };
      };
    }