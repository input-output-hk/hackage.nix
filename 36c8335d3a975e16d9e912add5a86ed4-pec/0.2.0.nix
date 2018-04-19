{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pec";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Brett Letner 2011-2012";
        maintainer = "Brett Letner <brettletner@gmail.com>";
        author = "Brett Letner <brettletner@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "pec embedded compiler";
        description = "The intent of pec is to provide a drop-in replacement for C, but with modern language features.  Pec is a procedural language with a functional/declarative feel.  Programming in pec is very similar to monadic programming in Haskell.  The primary use case for pec is to provide a productive environment for writing safe, efficient, embedded applications.";
        buildType = "Simple";
      };
      components = {
        pec = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.grm
            hsPkgs.Cabal
            hsPkgs.uniplate
            hsPkgs.derive
            hsPkgs.wl-pprint
            hsPkgs.syb
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.shake
            hsPkgs.cmdargs
          ];
        };
        exes = {
          pecgen = {
            depends  = [
              hsPkgs.pec
              hsPkgs.base
              hsPkgs.derive
              hsPkgs.wl-pprint
              hsPkgs.filepath
              hsPkgs.cmdargs
              hsPkgs.grm
              hsPkgs.Cabal
              hsPkgs.syb
              hsPkgs.deepseq
              hsPkgs.uniplate
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.shake
            ];
          };
          pec = {
            depends  = [
              hsPkgs.pec
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.cmdargs
              hsPkgs.grm
              hsPkgs.Cabal
              hsPkgs.wl-pprint
              hsPkgs.syb
              hsPkgs.deepseq
              hsPkgs.uniplate
              hsPkgs.mtl
              hsPkgs.shake
            ];
          };
          pecgencnt = {
            depends  = [
              hsPkgs.pec
              hsPkgs.base
              hsPkgs.derive
              hsPkgs.cmdargs
              hsPkgs.grm
              hsPkgs.Cabal
              hsPkgs.wl-pprint
              hsPkgs.syb
              hsPkgs.deepseq
              hsPkgs.uniplate
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.shake
            ];
          };
        };
      };
    }