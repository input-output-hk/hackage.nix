{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "derive";
          version = "2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2006-2009, Neil Mitchell";
        maintainer = "ndmitchell@gmail.com";
        author = "Neil Mitchell & Stefan O'Rear";
        homepage = "http://community.haskell.org/~ndm/derive/";
        url = "";
        synopsis = "A program and library to derive instances for data types";
        description = "Data.Derive is a library and a tool for deriving instances for Haskell programs.\nIt is designed to work with custom derivations, SYB and Template Haskell mechanisms.\nThe tool requires GHC, but the generated code is portable to all compilers.\nWe see this tool as a competitor to DrIFT.";
        buildType = "Simple";
      };
      components = {
        derive = {
          depends  = [
            hsPkgs.haskell-src-exts
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.uniplate
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.packedstring
          ];
        };
        exes = {
          derive = {
            depends  = [
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.bytestring
            ];
          };
        };
      };
    }