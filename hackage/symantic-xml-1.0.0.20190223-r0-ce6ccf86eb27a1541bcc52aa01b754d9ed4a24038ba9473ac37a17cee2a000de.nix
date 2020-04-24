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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hxt-charproperties" or ((hsPkgs.pkgs-errors).buildDepError "hxt-charproperties"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."treeseq" or ((hsPkgs.pkgs-errors).buildDepError "treeseq"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "symantic-xml-test" = {
          depends = [
            (hsPkgs."symantic-xml" or ((hsPkgs.pkgs-errors).buildDepError "symantic-xml"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."treeseq" or ((hsPkgs.pkgs-errors).buildDepError "treeseq"))
            ];
          buildable = true;
          };
        };
      };
    }