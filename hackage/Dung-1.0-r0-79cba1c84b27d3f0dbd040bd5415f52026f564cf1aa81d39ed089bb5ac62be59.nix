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
      specVersion = "1.6";
      identifier = {
        name = "Dung";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Bas van Gijzel";
      maintainer = "Bas van Gijzel <bmv@cs.nott.ac.uk>";
      author = "Bas van Gijzel";
      homepage = "http://www.cs.nott.ac.uk/~bmv/Dung/";
      url = "";
      synopsis = "An implementation of the Dung argumentation frameworks.";
      description = "An implementation of Dung's argumentation frameworks, an abstract argumentation model used to either directly represent conflicting information, or used as\na translation target for more complex (structured) argumentation models. For an introduction to Dung's frameworks see\n<http://en.wikipedia.org/wiki/Argumentation_framework> and Dung's paper from 1995: \\\"On the acceptability of arguments and its fundamental role\nin nonmonotonic reasoning, logic programming, and n-person games\\\", Artificial Intelligence 77: 321-357.\nFor the papers accompanying this library see \\\"Towards a framework for the implementation and verification of translations between argumentation\nmodels\\\" and \\\"A principled approach to the implementation of argumentation models\\\", available at <http://www.cs.nott.ac.uk/~bmv/Dung/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.cmdargs)
          (hsPkgs.parsec)
        ];
      };
      exes = { "dungell" = {}; };
    };
  }