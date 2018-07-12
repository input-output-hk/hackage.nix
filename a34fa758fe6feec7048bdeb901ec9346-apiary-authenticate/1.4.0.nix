{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-authenticate";
          version = "1.4.0";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "authenticate support for apiary web framework.";
        description = "example: <https://github.com/philopon/apiary/blob/master/examples/auth.hs>";
        buildType = "Simple";
      };
      components = {
        "apiary-authenticate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.apiary
            hsPkgs.apiary-session
            hsPkgs.authenticate
            hsPkgs.wai
            hsPkgs.monad-control
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.data-default-class
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.text
            hsPkgs.http-types
            hsPkgs.resourcet
            hsPkgs.blaze-builder
            hsPkgs.web-routing
            hsPkgs.types-compat
          ];
        };
      };
    }