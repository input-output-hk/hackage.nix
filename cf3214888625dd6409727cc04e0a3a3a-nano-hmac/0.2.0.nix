{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "nano-hmac";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<hitesh.jasani@gmail.com>";
        author = "Hitesh Jasani";
        homepage = "http://www.jasani.org/search/label/nano-hmac";
        url = "";
        synopsis = "Bindings to OpenSSL HMAC.";
        description = "Bindings to OpenSSL HMAC.";
        buildType = "Simple";
      };
      components = {
        nano-hmac = {
          depends  = if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ];
          libs = [ pkgs.crypto pkgs.ssl ];
        };
      };
    }