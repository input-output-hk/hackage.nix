{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "isohunt";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "reiner.pope@gmail.com";
        author = "Reiner Pope";
        homepage = "https://github.com/reinerp/isohunt";
        url = "";
        synopsis = "Bindings to the isoHunt torrent search API";
        description = "Bindings to the isoHunt torrent search API, as described in\n<http://ca.isohunt.com/forum/viewtopic.php?p=433527#433527>\n\nTo get started, see \"IsoHunt.Search\".";
        buildType = "Simple";
      };
      components = {
        "isohunt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.http-conduit
            hsPkgs.uri
            hsPkgs.data-default
            hsPkgs.ghc-prim
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.bytestring
          ];
        };
      };
    }