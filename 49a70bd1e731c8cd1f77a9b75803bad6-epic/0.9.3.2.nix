{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8.0.4";
      identifier = {
        name = "epic";
        version = "0.9.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eb@dcs.st-and.ac.uk";
      author = "Edwin Brady";
      homepage = "http://www.dcs.st-and.ac.uk/~eb/epic.php";
      url = "";
      synopsis = "Compiler for a simple functional language";
      description = "Epic is a simple functional language which compiles to\nreasonably efficient C code, using the Boehm-Demers-Weiser\ngarbage collector (<http://www.hpl.hp.com/personal/Hans_Boehm/gc/>).\nIt is intended as a compiler back end, and is currently used\nas a back end for Epigram (<http://www.e-pig.org>) and Idris\n(<http://idris-lang.org/>).\nIt can be invoked either as a library or an application.";
      buildType = "Custom";
    };
    components = {
      "epic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.Cabal)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.process)
        ];
      };
      exes = {
        "epic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }