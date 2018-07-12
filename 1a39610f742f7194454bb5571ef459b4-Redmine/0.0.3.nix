{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Redmine";
          version = "0.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "charles.stpierre@gmail.com";
        author = "Charles St-Pierre";
        homepage = "https://github.com/lookunder/RedmineHs";
        url = "";
        synopsis = "Library to access Redmine's REST services";
        description = "Library to access Redmine's REST services";
        buildType = "Simple";
      };
      components = {
        "Redmine" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.old-time
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.aeson
            hsPkgs.HTTP
            hsPkgs.network
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.http-client-tls
            hsPkgs.resourcet
            hsPkgs.connection
            hsPkgs.MissingH
          ];
        };
        tests = {
          "test-Redmine" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.text
              hsPkgs.MissingH
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.http-conduit
              hsPkgs.http-client-tls
              hsPkgs.connection
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.containers
            ];
          };
        };
      };
    }