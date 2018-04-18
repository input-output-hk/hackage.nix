{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "supero";
          version = "3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2006-2010";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/supero/";
        url = "";
        synopsis = "A Supercompiler";
        description = "A demo supercompiler - not really ready for public use yet.";
        buildType = "Simple";
      };
      components = {
        exes = {
          supero = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.haskell-src-exts
              hsPkgs.cpphs
              hsPkgs.uniplate
            ];
          };
        };
      };
    }