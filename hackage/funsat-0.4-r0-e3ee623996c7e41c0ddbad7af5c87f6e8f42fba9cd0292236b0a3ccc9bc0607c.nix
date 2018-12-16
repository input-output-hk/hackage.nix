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
      specVersion = "1.2";
      identifier = {
        name = "funsat";
        version = "0.4";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Denis Bueno <dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "";
      url = "";
      synopsis = "A modern DPLL-style SAT solver";
      description = "Funsat is a native Haskell SAT solver that uses modern techniques for\nsolving SAT instances.  Current features include two-watched literals,\nconflict-directed learning, non-chronological backtracking, a VSIDS-like\ndynamic variable ordering, and restarts.  It is possible to use funsat\nboth as a library and as a standalone executable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.QuickCheck)
          (hsPkgs.parse-dimacs)
          (hsPkgs.bitset)
          (hsPkgs.fgl)
        ];
      };
      exes = {
        "funsat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.QuickCheck)
            (hsPkgs.parse-dimacs)
            (hsPkgs.bitset)
            (hsPkgs.fgl)
            (hsPkgs.time)
          ];
        };
      };
    };
  }