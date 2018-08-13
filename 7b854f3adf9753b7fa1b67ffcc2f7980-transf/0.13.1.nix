{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "transf";
        version = "0.13.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Text transformer and interpreter.";
      description = "/Transf/ is simple text transformer and interpreter.\n\nIt scans its input for guard tokens and passes everything between to transformation functions. Transformation functions are composed from a small set of combinators and may perform arbitrary Haskell computation. Transf contains a full Haskell interpreter and can even interpret its input as Haskell.\n\nThe main purpose of Transf is to allow the embedding of Domain-Specific Languages in text or Markdown files.\nFor example one could use it with Diagrams as follows:\n\n> This is my file. Here is an image:\n>\n> ~~~diagram \"A circle!\"\n> circle <> stretchX 2 square\n> ~~~\n\nTransf can then generate the image, and replace the source in the text file with the name of the actual image. It can also include the source.\n\n> This is my file. Here is an image:\n>\n> ![A circle](a22b15efb10b.png)\n>\n\nYou can supply your own file names. In the above example, the file name is a hash of the source code.";
      buildType = "Simple";
    };
    components = {
      "transf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.monadplus)
          (hsPkgs.filepath)
          (hsPkgs.data-default)
          (hsPkgs.async)
          (hsPkgs.process)
          (hsPkgs.hashable)
          (hsPkgs.hint)
        ];
      };
      exes = { "transf" = {}; };
    };
  }