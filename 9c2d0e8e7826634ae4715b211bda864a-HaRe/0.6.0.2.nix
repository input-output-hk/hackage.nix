{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HaRe";
          version = "0.6.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Brown";
        author = "Chris Brown, Huiqing Li, Simon Thompson";
        homepage = "http://www.cs.kent.ac.uk/projects/refactor-fp";
        url = "";
        synopsis = "the Haskell Refactorer.";
        description = "A full Haskell 98 refactoring tool. HaRe supports the full Haskell 98 standard, implemented in Haskell and supporting Emacs and VIm.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hare-evaluate = {
            depends  = [
              hsPkgs.base
              hsPkgs.hint
              hsPkgs.filepath
            ];
          };
          hare = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.network
              hsPkgs.ghc
              hsPkgs.haskell98
              hsPkgs.containers
              hsPkgs.hint
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.filepath
            ];
          };
          hare-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.network
              hsPkgs.ghc
              hsPkgs.haskell98
              hsPkgs.containers
              hsPkgs.hint
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.filepath
            ];
          };
        };
      };
    }