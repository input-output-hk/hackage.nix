{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "antigate";
          version = "0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "kudah <kudahkukarek@gmail.com>";
        author = "kudah <kudahkukarek@gmail.com>";
        homepage = "https://github.com/exbb2/antigate";
        url = "";
        synopsis = "Haskell interface for antigate.com captcha recognition service and services supporting its API";
        description = "Haskell interface for antigate.com captcha recognition service and other services (e.g. captchabot, decaptcher)";
        buildType = "Simple";
      };
      components = {
        antigate = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.data-default
            hsPkgs.safe
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
        };
      };
    }