{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snap-utils";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Luke Hoersten <luke@hoersten.org>";
        author = "Luke Hoersten";
        homepage = "https://github.com/LukeHoersten/snap-utils";
        url = "";
        synopsis = "Snap Framework utilities.";
        description = "Snap.Utils provides helper modules for making web apps\nwith Snap Framework. The underlying design goal is to rely on more\ntraditional HTTP-based methods of stateless control flow instead of\nrelying on cookies and server state continuations.";
        buildType = "Simple";
      };
      components = {
        snap-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.xmlhtml
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.heist
            hsPkgs.http-types
            hsPkgs.text
          ];
        };
      };
    }