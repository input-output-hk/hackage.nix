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
        name = "hoopl";
        version = "3.10.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ning Wang <email@ningwang.org>, Michal Terepeta <michal.terepeta@gmail.com>, Norman Ramsey <nr@cs.tufts.edu>";
      author = "Norman Ramsey, Joao Dias, Simon Marlow and Simon Peyton Jones";
      homepage = "https://github.com/haskell/hoopl";
      url = "";
      synopsis = "A library to support dataflow analysis and optimization";
      description = "Higher-order optimization library\n\nSee /Norman Ramsey, Joao Dias, and Simon Peyton Jones./\n<http://research.microsoft.com/en-us/um/people/simonpj/Papers/c--/hoopl-haskell10.pdf \"Hoopl: A Modular, Reusable Library for Dataflow Analysis and Transformation\"> /(2010)/ for more details.";
      buildType = "Simple";
    };
    components = {
      "hoopl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "hoopl-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }