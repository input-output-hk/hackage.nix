{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haxr";
          version = "3000.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, 2003-2006";
        maintainer = "Bjorn Bringert <bjorn@bringert.net>";
        author = "Bjorn Bringert <bjorn@bringert.net>";
        homepage = "http://www.haskell.org/haxr/";
        url = "";
        synopsis = "XML-RPC client and server library.";
        description = "HaXR is a library for writing XML-RPC\nclient and server applications in Haskell.";
        buildType = "Simple";
      };
      components = {
        haxr = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.HaXml
            hsPkgs.HTTP
            hsPkgs.dataenc
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.array
          ];
        };
      };
    }