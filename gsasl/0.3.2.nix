{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gsasl";
          version = "0.3.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "http://ianen.org/haskell/bindings/gsasl/";
        url = "";
        synopsis = "Bindings for GNU SASL";
        description = "";
        buildType = "Simple";
      };
      components = {
        gsasl = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
          ];
        };
      };
    }