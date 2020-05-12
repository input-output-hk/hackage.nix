{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."treeseq" or (errorHandler.buildDepError "treeseq"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "symantic-xml-test" = {
          depends = [
            (hsPkgs."symantic-xml" or (errorHandler.buildDepError "symantic-xml"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."treeseq" or (errorHandler.buildDepError "treeseq"))
            ];
          buildable = true;
          };
        };
      };
    }