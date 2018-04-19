{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "authenticate-oauth";
          version = "1.5.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hiromi Ishii";
        author = "Hiromi Ishii";
        homepage = "http://github.com/yesodweb/authenticate";
        url = "";
        synopsis = "Library to authenticate with OAuth for Haskell web applications.";
        description = "API docs and the README are available at <http://www.stackage.org/package/authenticate-oauth>.";
        buildType = "Simple";
      };
      components = {
        authenticate-oauth = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.crypto-pubkey-types
            hsPkgs.RSA
            hsPkgs.time
            hsPkgs.data-default
            hsPkgs.base64-bytestring
            hsPkgs.SHA
            hsPkgs.random
            hsPkgs.http-types
            hsPkgs.blaze-builder
          ];
        };
      };
    }