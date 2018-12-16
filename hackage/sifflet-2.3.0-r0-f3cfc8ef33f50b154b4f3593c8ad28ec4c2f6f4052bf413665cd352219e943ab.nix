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
      specVersion = "1.22";
      identifier = {
        name = "sifflet";
        version = "2.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2009-2016 Gregory D. Weber";
      maintainer = "\"gdweber\" ++ drop 3 \"abc@\" ++ \"iue.edu\"";
      author = "Gregory D. Weber";
      homepage = "http://pages.iu.edu/~gdweber/software/sifflet/";
      url = "";
      synopsis = "Simple, visual, functional language for learning about recursion.";
      description = "Sifflet is a visual, functional programming language.\nIt is intended as an aid for learning about recursion.\nSifflet users can make programs by drawing diagrams\nto connect functions and other units.\nSifflet shows the intermediate steps of the computation\non the diagram, and can expand function calls to show further details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fgl)
          (hsPkgs.hxt)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "sifflet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sifflet)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cairo)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.fgl)
            (hsPkgs.HUnit)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.sifflet)
          ];
        };
      };
    };
  }