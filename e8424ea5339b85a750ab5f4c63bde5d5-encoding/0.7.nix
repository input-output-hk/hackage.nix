{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      systemencoding = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "encoding";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel@wagner-home.com";
        author = "Henning Günther";
        homepage = "http://code.haskell.org/encoding/";
        url = "";
        synopsis = "A library for various character encodings";
        description = "Haskell has excellect handling of unicode, the Char type covers all unicode chars. Unfortunatly, there's no possibility to read or write something to the outer world in an encoding other than ascii due to the lack of support for encodings. This library should help with that.";
        buildType = "Custom";
      };
      components = {
        encoding = {
          depends  = [
            hsPkgs.binary
            hsPkgs.extensible-exceptions
            hsPkgs.HaXml
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.regex-compat
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim
            else [ hsPkgs.base ]);
        };
      };
    }