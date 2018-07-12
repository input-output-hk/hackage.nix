{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snaplet-sqlite-simple-jwt-auth";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Janne Hellsten";
        maintainer = "jjhellst@gmail.com";
        author = "Janne Hellsten";
        homepage = "https://github.com/nurpax/snaplet-sqlite-simple-jwt-auth#readme";
        url = "";
        synopsis = "Snaplet for JWT authentication with snaplet-sqlite-simple";
        description = "JWT authentication snaplet for snaplet-sqlite-simple.\n\nVery much a work-in-progress, use at your own risk.\n\nMain documentation: <docs/Snap-Snaplet-SqliteSimple-JwtAuth Snap.Snaplet.SqliteSimple.JwtAuth>\n\nFor more info, browse to <http://github.com/nurpax/snaplet-sqlite-simple-jwt-auth> for examples & more information.";
        buildType = "Simple";
      };
      components = {
        "snaplet-sqlite-simple-jwt-auth" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bcrypt
            hsPkgs.bytestring
            hsPkgs.clientsession
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.jwt
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.snaplet-sqlite-simple
            hsPkgs.sqlite-simple
            hsPkgs.text
            hsPkgs.time
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.unordered-containers
          ];
        };
      };
    }