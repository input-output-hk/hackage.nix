{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "text";
          version = "0.8.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2008-2009 Tom Harper, 2009-2010 Bryan O'Sullivan";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>\nTom Harper <rrtomharper@googlemail.com>\nDuncan Coutts <duncan@haskell.org>";
        author = "Tom Harper <rtomharper@googlemail.com>";
        homepage = "";
        url = "";
        synopsis = "An efficient packed Unicode text type";
        description = "An efficient packed Unicode text type.";
        buildType = "Simple";
      };
      components = {
        text = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ (if compiler.isGhc
            then [
              hsPkgs.ghc-prim
              hsPkgs.base
              hsPkgs.deepseq
            ]
            else [
              hsPkgs.extensible-exceptions
            ]);
        };
      };
    }