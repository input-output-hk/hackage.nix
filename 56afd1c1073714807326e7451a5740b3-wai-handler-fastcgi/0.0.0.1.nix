{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-handler-fastcgi";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/wai-handler-fastcgi";
        url = "";
        synopsis = "WAI wrapper around direct-fastcgi";
        description = "";
        buildType = "Simple";
      };
      components = {
        "wai-handler-fastcgi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.direct-fastcgi
          ];
        };
      };
    }