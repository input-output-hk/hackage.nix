{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/wai";
        url = "";
        synopsis = "Web Application Interface.";
        description = "Provides a common protocol for communication between web aplications and web servers.";
        buildType = "Simple";
      };
      components = {
        "wai" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
          ];
        };
      };
    }