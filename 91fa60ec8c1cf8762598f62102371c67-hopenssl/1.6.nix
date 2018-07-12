{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hopenssl";
          version = "1.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2004-2011 Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>,\nJesper Louis Andersen <jesper.louis.andersen@gmail.com>,\nMarkus Rothe <markus@unixforces.net>";
        homepage = "http://gitorious.org/hopenssl";
        url = "";
        synopsis = "FFI bindings to OpenSSL's EVP digest interface";
        description = "Foreign-function bindings to the OpenSSL library\n<http://www.openssl.org/>. Currently provides\naccess to the messages digests MD2, MD5, SHA,\nSHA1, DSS, DSS1, and RIPEMD160 through the\nEVP digest interface.";
        buildType = "Simple";
      };
      components = {
        "hopenssl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
          ];
          libs = [ pkgs.crypto ];
        };
      };
    }