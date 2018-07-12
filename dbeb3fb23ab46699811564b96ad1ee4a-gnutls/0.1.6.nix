{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gnutls";
          version = "0.1.6";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/haskell-gnutls/";
        url = "";
        synopsis = "Bindings for GNU libgnutls";
        description = "You almost certainly don't want to depend on this release.\n\nThis is a pre-alpha, almost useless release; its only purpose is to enable\nTLS support in some of my other libraries. More complete bindings for GNU TLS\nwill be released at a later date.";
        buildType = "Simple";
      };
      components = {
        "gnutls" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.monads-tf
          ];
          libs = [ pkgs.gnutls ];
          pkgconfig = [
            pkgconfPkgs.gnutls
          ];
        };
      };
    }