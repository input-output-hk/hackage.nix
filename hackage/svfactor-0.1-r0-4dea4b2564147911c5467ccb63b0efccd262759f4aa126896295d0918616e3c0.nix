{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "svfactor";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "george@qfpl.io";
      author = "George Wilson";
      homepage = "https://github.com/qfpl/svfactor";
      url = "";
      synopsis = "Syntax-preserving CSV manipulation";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nsvfactor is a library for parsing, manipulating, and printing CSV and\nsimilar formats (such as PSV, TSV, and many more).\n\nsvfactor retains all syntactic information including newlines, and\nprovides lenses, prisms, and traversals to query and manipulate this\nstructure.\nThis should make it useful for writing custom CSV transformations and\nsanitisation tools. For example, one could easily use it to rewrite all\nCRLF newlines to LF.\nIt also extends RFC4180 by allowing optional spacing surrounding fields.\n\nsvfactor's parser is exposed so you can use it independently and printing is similarly standalone.\n\nPlease note that there are __known performance problems with svfactor__.\n\nExamples:\n\n* Handling multiple logical documents in one file: <https://github.com/qfpl/svfactor/blob/master/examples/src/Data/Svfactor/Example/Concat.hs Concat.hs>\n* Fixing inconsistent formatting with lenses: <https://github.com/qfpl/svfactor/blob/master/examples/src/Data/Svfactor/Example/Requote.hs Requote.hs>";
      buildType = "Simple";
    };
    components = {
      "svfactor" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.charset)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.parsec)
          (hsPkgs.parsers)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.parsers)
            (hsPkgs.semigroups)
            (hsPkgs.svfactor)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.trifecta)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }