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
        name = "wizards";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor-Davis";
      homepage = "";
      url = "";
      synopsis = "High level, generic library for interrogative user interfaces";
      description = "@wizards@ is a package designed for the quick and painless development of /interrogative/ programs, which\nrevolve around a \\\"dialogue\\\" with the user, who is asked a series of questions in a sequence much like an\ninstallation wizard.\n\nEverything from interactive system scripts, to installation wizards, to full-blown shells can be implemented with\nthe support of @wizards@.\n\nIt is developed transparently on top of a free monad, which separates out the semantics of the program from any\nparticular interface. A variety of backends exist, including console-based \"System.Console.Wizard.Haskeline\" and\n\"System.Console.Wizard.BasicIO\", and the pure \"System.Console.Wizard.Pure\". It is also possible to write your\nown backends, or extend existing back-ends with new features. While both built-in IO backends operate on a\nconsole, there is no reason why @wizards@ cannot also be used for making GUI wizard interfaces.\n\n\nSee the github page for examples on usage:\n\n<http://www.github.com/liamoc/wizards>\n\nFor creating backends, the module \"System.Console.Wizard.Internal\" has a brief tutorial.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.control-monad-free)
          (hsPkgs.containers)
        ];
      };
    };
  }