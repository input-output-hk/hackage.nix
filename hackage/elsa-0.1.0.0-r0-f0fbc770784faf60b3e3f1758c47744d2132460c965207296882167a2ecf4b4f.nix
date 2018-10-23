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
        name = "elsa";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jhala@cs.ucsd.edu";
      author = "Ranjit Jhala";
      homepage = "http://github.com/ucsd-progsys/elsa";
      url = "";
      synopsis = "A tiny language for understanding the lambda-calculus";
      description = "elsa is a small proof checker for verifying sequences of\nreductions of lambda-calculus terms. The goal is to help\nstudents build up intuition about lambda-terms, alpha-equivalence,\nbeta-reduction, and in general, the notion of computation\nby substitution.";
      buildType = "Simple";
    };
    components = {
      "elsa" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.megaparsec)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.json)
        ];
      };
      exes = {
        "elsa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.elsa)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.elsa)
          ];
        };
      };
    };
  }