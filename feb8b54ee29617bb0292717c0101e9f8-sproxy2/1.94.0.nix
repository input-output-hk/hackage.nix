{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "sproxy2";
          version = "1.94.0";
        };
        license = "MIT";
        copyright = "2016, Zalora South East Asia Pte. Ltd";
        maintainer = "Igor Pashev <pashev.igor@gmail.com>";
        author = "Igor Pashev <pashev.igor@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Secure HTTP proxy for authenticating users via OAuth2";
        description = "Sproxy is secure by default. No requests makes it to the backend\nserver if they haven't been explicitly whitelisted.  Sproxy is\nindependent. Any web application written in any language can\nuse it.";
        buildType = "Simple";
      };
      components = {
        exes = {
          sproxy2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.cookie
              hsPkgs.docopt
              hsPkgs.entropy
              hsPkgs.Glob
              hsPkgs.http-client
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.interpolatedstring-perl6
              hsPkgs.network
              hsPkgs.postgresql-simple
              hsPkgs.resource-pool
              hsPkgs.SHA
              hsPkgs.sqlite-simple
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.wai
              hsPkgs.wai-conduit
              hsPkgs.warp
              hsPkgs.warp-tls
              hsPkgs.word8
              hsPkgs.yaml
            ];
          };
        };
      };
    }