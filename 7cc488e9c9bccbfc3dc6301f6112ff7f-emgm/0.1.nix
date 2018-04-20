{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      hpc = false;
      nolib = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "emgm";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Universiteit Utrecht";
        maintainer = "generics@haskell.org";
        author = "Sean Leather,\nJosé Pedro Magalhães,\nAlexey Rodriguez,\nAndres Löh";
        homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/EMGM";
        url = "";
        synopsis = "Extensible and Modular Generics for the Masses";
        description = "EMGM is a general-purpose library for generic programming with type classes.\n\nThe design is based on the idea of modeling algebraic datatypes as\nsum-of-product structures. Many datatypes can be modeled this way, and,\nbecause they all share a common structure, we can write generic functions that\nwork on this structure.\n\nThe library provides three main components:\n\n(1) 'Common' - /A common foundation for building generic functions and adding support for datatypes./\nThis includes the collection of datatypes (e.g. sum, product, unit) and type\nclasses (e.g. 'Generic', 'Rep'), that are used throughout the library. This is\nwhat you need to define your own generic functions, to add generic support for\nyour datatype, or to define ad-hoc cases.\n\n(2) 'Functions' - /A collection of useful generic functions./\nThese work with a variety of datatypes and provide a wide range of operations.\nFor example, there is 'crush', a generalization of the fold functions. It is\none of the most useful functions, because it allows you to flexibly extract\nthe elements of a polymorphic container.\n\n(3) 'Data' - /Support for using standard datatypes generically./\nTypes such as @[a]@, tuples, and @Maybe@ are built into Haskell or come\nincluded in the standard libraries. EMGM provides full support for generic\nfunctions on these datatypes. The modules in this component are also useful as\nguides when adding generic support for your own datatypes.\n\nEMGM originated in the research of Ralf Hinze, Bruno Oliveira, and Andres Löh\n[1,2]. The library was further explored in a comparison of generic programming\nlibraries by Alexey Rodriguez, et al [3]. Lastly, this released package was\ndeveloped simultaneously with the writing of lecture notes for the 2008\nAdvanced Functional Programming Summer School [4] (forthcoming). These are\ngood resources for learning how the library works and how to use it, but be\naware that names may have been changed to protect the innocent.\n\n(1) Ralf Hinze. Generics for the Masses. In ICFP 2004: Proceedings of the 9th ACM\nSIGPLAN international conference on Functional programming, pages 236-243. ACM\nPress, 2004.\n(<http://www.informatik.uni-bonn.de/~ralf/publications.html#P21>)\n\n(2) Bruno C. d. S. Oliveira, Ralf Hinze, and Andres Löh. Extensible and Modular\nGenerics for the Masses. In Henrik Nilsson, editor, Trends in Functional\nProgramming, pages 199-216, 2006.\n(<http://web.comlab.ox.ac.uk/publications/publication444-abstract.html>)\n\n(3) Alexey Rodriguez, Johan Jeuring, Patrik Jansson, Alex Gerdes, Oleg Kiselyov,\nand Bruno C. d. S. Oliveira. Comparing Libraries for Generic Programming in\nHaskell. Technical Report UU-CS-2008-010. Department of Information and\nComputing Sciences, Utrecht University.\n(<http://www.cs.uu.nl/wiki/bin/view/Alexey/ComparingLibrariesForGenericProgrammingInHaskell>)\n\n(4) Johan Jeuring, Sean Leather, José Pedro Magalhães, and Alexey Rodriguez\nYakushev. Libraries for Generic Programming in Haskell. Technical Report\nUU-CS-2008-025. Department of Information and Computing Sciences, Utrecht\nUniversity.\n(<http://www.cs.uu.nl/research/techreps/UU-CS-2008-025.html>)";
        buildType = "Custom";
      };
      components = {
        emgm = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          test = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }