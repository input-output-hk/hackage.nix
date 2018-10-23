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
        name = "funcons-tools";
        version = "0.2.0.3";
      };
      license = "MIT";
      copyright = "Copyright (C) 2015 L. Thomas van Binsbergen and Neil Sculthorpe";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen and Neil Sculthorpe";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "A modular interpreter for executing funcons";
      description = "The PLanCompS project (<http://plancomps.org>) has developed a component-based approach to formal semantics.\nThe semantics of a language is defined by translating its constructs to combinations\nof `fundamental constructs' called /funcons/.\n\nThis package provides a collection of highly reusable funcons in \"Funcons.Core\",\nan interpreter for these funcons and means for defining new funcons.\n\nThe executable provided by this package is an interpreter for running terms\nconstructed from the collection of funcons provided by \"Funcons.Core\".\nHow this executable is used is explained in \"Funcons.Tools\".\n\nAdditional funcons can be defined with the helper functions provided by\n\"Funcons.EDSL\". The module \"Funcons.Tools\" provides functions for creating\nexecutables by extending the main interpreter with additional funcons.\n";
      buildType = "Simple";
    };
    components = {
      "funcons-tools" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.bv)
          (hsPkgs.multiset)
          (hsPkgs.split)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.gll)
          (hsPkgs.TypeCompose)
          (hsPkgs.regex-applicative)
          (hsPkgs.random-strings)
          (hsPkgs.funcons-values)
        ];
      };
      exes = {
        "runfct" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.bv)
            (hsPkgs.funcons-tools)
            (hsPkgs.multiset)
            (hsPkgs.split)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.gll)
            (hsPkgs.TypeCompose)
            (hsPkgs.regex-applicative)
            (hsPkgs.random-strings)
            (hsPkgs.funcons-values)
          ];
        };
      };
    };
  }