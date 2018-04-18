{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "epic";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eb@dcs.st-and.ac.uk";
        author = "Edwin Brady";
        homepage = "http://www.dcs.st-and.ac.uk/~eb/epic.php";
        url = "";
        synopsis = "Compiler for a supercombinator language";
        description = "Epic is a simple functional language which compiles to\nreasonably efficient C code, using the Boehm-Demers-Weiser\ngarbage collector (<http://www.hpl.hp.com/personal/Hans_Boehm/gc/>).\nIt is intended as a compiler back end, and is currently used\nas a back end for Epigram (<http://www.e-pig.org>) and Idris\n(<http://www.cs.st-and.ac.uk/~eb/Idris>).\nIt can be invoked either as a library or an application.";
        buildType = "Custom";
      };
      components = {
        epic = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.Cabal
            hsPkgs.array
            hsPkgs.directory
          ];
        };
        exes = {
          epic = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.mtl
              hsPkgs.Cabal
              hsPkgs.array
              hsPkgs.directory
            ];
          };
        };
      };
    }