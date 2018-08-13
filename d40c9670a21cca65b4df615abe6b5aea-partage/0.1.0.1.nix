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
      specVersion = "1.10";
      identifier = {
        name = "partage";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2016 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/partage";
      url = "";
      synopsis = "Parsing factorized";
      description = "The library implements an Earley-style, bottom-up parser for tree adjoining\ngrammars (TAGs) with special focus on structure (and, hence, computation) sharing.\n\nTwo particular flavours of structure sharing are currently implemented:\n\n* Subtrees common to different elementary trees are shared amongst them.\nThe input TAG, which can be seen as a set of elementary (initial and auxiliary)\ngrammar trees, is in fact transformed into an equivalent DAG.\n\n* Flat production grammar rules representing the individual parts of the DAG\nare then compressed in the form of a minimal FSA. Other forms of\ncompression are also provided by the library (e.g. prefix tree).";
      buildType = "Simple";
    };
    components = {
      "partage" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.pipes)
          (hsPkgs.PSQueue)
          (hsPkgs.data-partition)
          (hsPkgs.mmorph)
          (hsPkgs.dawg-ord)
          (hsPkgs.data-lens-light)
          (hsPkgs.random)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.partage)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }