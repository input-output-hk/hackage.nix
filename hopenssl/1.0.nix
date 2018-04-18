{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hopenssl";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>";
        homepage = "http://cryp.to/hopenssl/";
        url = "";
        synopsis = "FFI bindings to OpenSSL's EVP digest interface";
        description = "FFI bindings to OpenSSL's EVP digest interface";
        buildType = "Simple";
      };
      components = {
        hopenssl = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
          libs = [ pkgs.crypto ];
        };
      };
    }