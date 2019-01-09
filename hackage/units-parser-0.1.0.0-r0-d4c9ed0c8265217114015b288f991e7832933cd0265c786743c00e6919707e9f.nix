{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "units-parser"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>, Adam Gundry <adam@well-typed.com>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "";
      url = "";
      synopsis = "A parser for units of measure";
      description = "The @units-parser@ package provides a parser for unit expressions\nwith F#-style syntax, to support the @units@ package and other\npackages providing type-level units of measure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.multimap)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          ];
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.multimap)
            (hsPkgs.syb)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }