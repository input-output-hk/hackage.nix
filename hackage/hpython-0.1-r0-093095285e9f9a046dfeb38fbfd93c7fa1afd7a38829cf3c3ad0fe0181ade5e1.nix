{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hpython"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "isaace71295@gmail.com";
      author = "Isaac Elliott";
      homepage = "";
      url = "";
      synopsis = "Python language tools";
      description = "`hpython` provides an abstract syntax tree for Python 3.5, along with a parser,\nprinter, and syntax checker. It also contains optics for working with the AST,\nand a DSL for writing Python programs directly in Haskell.\n\nFor a high-level overview of the library, see the @Language.Python@ module.\n\nFor code examples, see the [examples directory on GitHub](https://github.com/qfpl/hpython/tree/master/example).\n\nFor general information about the project, see the [project readme](https://github.com/qfpl/hpython/blob/master/README.md).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.digit)
          (hsPkgs.dlist)
          (hsPkgs.lens)
          (hsPkgs.parsers)
          (hsPkgs.megaparsec)
          (hsPkgs.fingertree)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.deriving-compat)
          (hsPkgs.semigroupoids)
          (hsPkgs.text)
          (hsPkgs.these)
          (hsPkgs.validation)
          (hsPkgs.parsers-megaparsec)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.hpython)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "hpython-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.hpython)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.megaparsec)
            (hsPkgs.validation)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hpython)
            (hsPkgs.megaparsec)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.validation)
            ];
          };
        };
      };
    }