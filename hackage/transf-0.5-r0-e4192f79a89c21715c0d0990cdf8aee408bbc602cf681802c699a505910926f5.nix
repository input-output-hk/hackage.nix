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
      specVersion = "1.6";
      identifier = { name = "transf"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Text transformer and interpreter.";
      description = "Transf is functional text transformer and interpreter.\nIt scans its input for guard tokens and passes everything between to transformation functions. Transformation functions are composed from a small set of combinators and may perform arbirary Haskell computation. Transf contains a full Haskell interpeter and can even interpret its input as Haskell.\nThe main purpose of Transf is to allow the embedding of Domain-Specific Languages in plain text or Markdown files. For example one could use it with Diagrams as follows:\n> This is my file. Here is an image:\n>\n> ~~~diagram \"A circle!\"\n> circle <> stretchX 2 square\n> ~~~\nTransf can then generate the image, and replace the source in the text file with the name of the actual image. It can also include the source.\n> This is my file. Here is an image:\n>\n> ![A circle](a22b15efb10b.png)\n>\nYou can supply your own file names. In the above example, the file name is a 32-bit hash of the source code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monadplus" or (errorHandler.buildDepError "monadplus"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."music-preludes" or (errorHandler.buildDepError "music-preludes"))
        ];
        buildable = true;
      };
      exes = { "transf" = { buildable = true; }; };
    };
  }