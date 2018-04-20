{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "authenticate-oauth";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hiromi Ishii";
        author = "Hiromi Ishii";
        homepage = "http://github.com/yesodweb/authenticate";
        url = "";
        synopsis = "Authentication methods for Haskell web applications.";
        description = "OAuth authentication, e.g. Twitter.";
        buildType = "Simple";
      };
      components = {
        authenticate-oauth = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.RSA
            hsPkgs.time
            hsPkgs.data-default
            hsPkgs.base64-bytestring
            hsPkgs.SHA
            hsPkgs.random
            hsPkgs.http-types
            hsPkgs.blaze-builder
            hsPkgs.conduit
            hsPkgs.blaze-builder-conduit
          ];
        };
      };
    }