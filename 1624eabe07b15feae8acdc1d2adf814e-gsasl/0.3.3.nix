{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gsasl";
          version = "0.3.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/haskell-gsasl/";
        url = "";
        synopsis = "Bindings for GNU SASL";
        description = "";
        buildType = "Simple";
      };
      components = {
        "gsasl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
          ];
          pkgconfig = [
            pkgconfPkgs.libgsasl
          ];
        };
      };
    }