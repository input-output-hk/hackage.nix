{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "funcons-simple";
        version = "0.1.0.5";
      };
      license = "MIT";
      copyright = "Copyright (C) 2015 L. Thomas van Binsbergen and Neil Sculthorpe";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen and Neil Sculthorpe";
      homepage = "https://plancomps.github.io/CBS-beta/Languages-beta/SIMPLE/";
      url = "";
      synopsis = "A modular interpreter for executing SIMPLE funcons";
      description = "The PLanCompS (<http://plancomps.org>) project has developed a component-based approach to formal semantics.\nA reusable component of language definition corresponds to a fundamental\nprogramming construct: a `funcon', which has a fixed operational interpretation.\nThis package provides an interpreter for the funcons of SIMPLE <https://plancomps.github.io/CBS-beta/Languages-beta/SIMPLE/> extending the interpreter for the reusable funcons of /funcons-tools/ <https://hackage.haskell.org/package/funcons-tools>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "runfct-SIMPLE" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.funcons-tools)
            (hsPkgs.funcons-values)
          ];
        };
      };
    };
  }