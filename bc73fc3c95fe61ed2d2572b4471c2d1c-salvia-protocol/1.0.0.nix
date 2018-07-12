{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "salvia-protocol";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sfvisser@cs.uu.nl";
        author = "Sebastiaan Visser";
        homepage = "";
        url = "";
        synopsis = "Protocol suite for the Salvia webserver, including functionality for URI, HTTP, Cookie and MIME.";
        description = "Protocol suite for the Salvia webserver, including functionality for URI, HTTP, Cookie and MIME.";
        buildType = "Simple";
      };
      components = {
        "salvia-protocol" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.safe
            hsPkgs.fclabels
            hsPkgs.split
            hsPkgs.bimap
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.utf8-string
          ];
        };
      };
    }