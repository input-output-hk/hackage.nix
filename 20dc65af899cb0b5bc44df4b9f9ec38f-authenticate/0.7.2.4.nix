{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "authenticate";
          version = "0.7.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/authenticate/tree/master";
        url = "";
        synopsis = "Authentication methods for Haskell web applications.";
        description = "Focus is on third-party authentication methods, such as OpenID,\nrpxnow and Facebook.";
        buildType = "Simple";
      };
      components = {
        authenticate = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-object
            hsPkgs.data-object-json
            hsPkgs.http-enumerator
            hsPkgs.tagsoup
            hsPkgs.failure
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.network
            hsPkgs.xml
          ];
        };
      };
    }