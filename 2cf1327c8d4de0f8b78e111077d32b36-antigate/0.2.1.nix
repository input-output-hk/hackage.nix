{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "antigate";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "kudah <kudahkukarek@gmail.com>";
        author = "kudah <kudahkukarek@gmail.com>";
        homepage = "https://github.com/exbb2/antigate";
        url = "";
        synopsis = "Interface for antigate.com captcha recognition service.";
        description = "Interface for antigate.com captcha recognition service.";
        buildType = "Simple";
      };
      components = {
        antigate = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.data-default
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.transformers
            hsPkgs.resourcet
          ];
        };
      };
    }