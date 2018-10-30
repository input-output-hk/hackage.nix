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
        name = "unbound";
        version = "0.5.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephanie Weirich <sweirich@cis.upenn.edu>";
      author = "Stephanie Weirich, Brent Yorgey";
      homepage = "https://github.com/sweirich/replib";
      url = "";
      synopsis = "Generic support for programming with names and binders";
      description = "Specify the binding structure of your data type with an\nexpressive set of type combinators, and Unbound\nhandles the rest!  Automatically derives\nalpha-equivalence, free variable calculation,\ncapture-avoiding substitution, and more. See\n\"Unbound.LocallyNameless\" to get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.RepLib)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.binary)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "lambda-calculus" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.RepLib)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.template-haskell)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }