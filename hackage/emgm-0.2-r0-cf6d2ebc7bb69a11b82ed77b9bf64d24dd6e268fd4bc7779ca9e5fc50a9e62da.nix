{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      th23 = true;
      test = false;
      hpc = false;
      nolib = false;
    };
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "emgm";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "Sean Leather,\nJosé Pedro Magalhães,\nAlexey Rodriguez,\nAndres Löh";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/EMGM";
      url = "";
      synopsis = "Extensible and Modular Generics for the Masses";
      description = "EMGM is a general-purpose library for generic programming with type classes.\n\nThe design is based on the idea of modeling algebraic datatypes as\nsum-of-product structures. Many datatypes can be modeled this way, and\nbecause they all share a common structure, we can write generic functions that\nwork on this structure.\n\nThe library provides three main components:\n\n(1) 'Common' - /A common foundation for building generic functions and adding support for datatypes./\nThis includes the collection of datatypes (e.g. sum, product, unit) and type\nclasses (e.g. 'Generic', 'Rep'), that are used throughout the library. This is\nwhat you need to define your own generic functions, to add generic support for\nyour datatype, or to define ad-hoc cases.\n\n(2) 'Data' - /Support for using standard datatypes generically./\nTypes such as @[a]@, tuples, and @Maybe@ are built into Haskell or come\nincluded in the standard libraries. EMGM provides full support for generic\nfunctions on these datatypes. The modules in this component are also useful as\nguides when adding generic support for your own datatypes.\n\n(3) 'Functions' - /A collection of useful generic functions./\nThese work with a variety of datatypes and provide a wide range of operations.\nFor example, there is 'crush', a generalization of the fold functions. It is\none of the most useful functions, because it allows you to flexibly extract\nthe elements of a polymorphic container.\n\nFor more information on the EMGM library, see the homepage:\n<http://www.cs.uu.nl/wiki/GenericProgramming/EMGM>";
      buildType = "Custom";
    };
    components = {
      "emgm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ] ++ [
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "test" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.template-haskell)
          ] ++ [
            (hsPkgs.template-haskell)
          ]) ++ pkgs.lib.optionals (flags.test) [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }