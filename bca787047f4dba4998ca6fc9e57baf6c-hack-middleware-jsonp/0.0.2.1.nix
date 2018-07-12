{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-middleware-jsonp";
          version = "0.0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/hack-middleware-jsonp/tree/master";
        url = "";
        synopsis = "Automatic wrapping of JSON responses to convert into JSONP. (deprecated)";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hack-middleware-jsonp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-class
            hsPkgs.web-encodings
            hsPkgs.hack
          ];
        };
      };
    }