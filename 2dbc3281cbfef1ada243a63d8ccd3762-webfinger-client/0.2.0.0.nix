{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "webfinger-client";
          version = "0.2.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://hub.darcs.net/fr33domlover/webfinger-client";
        url = "";
        synopsis = "WebFinger client library";
        description = "This is a client library for querying a\n<https://webfinger.net WebFinger>\nresource and parsing the response.";
        buildType = "Simple";
      };
      components = {
        webfinger-client = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.link-relations
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.uri-bytestring
          ];
        };
      };
    }