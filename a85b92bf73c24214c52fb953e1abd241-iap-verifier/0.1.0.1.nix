{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iap-verifier";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "t.t.mc1192.sf@gmail.com";
        author = "tattsun";
        homepage = "http://github.com/tattsun/iap-verifier";
        url = "";
        synopsis = "A simple wrapper of In-App-Purchase receipt validate APIs.";
        description = "";
        buildType = "Simple";
      };
      components = {
        iap-verifier = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.http-conduit
            hsPkgs.monads-tf
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }