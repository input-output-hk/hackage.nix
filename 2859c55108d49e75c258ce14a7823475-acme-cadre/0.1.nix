{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "acme-cadre";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Jafet <jafet.vixle@gmail.com>";
        author = "Jafet";
        homepage = "";
        url = "";
        synopsis = "car, cdr and more";
        description = "Powerful and compositional tuple processing, informed by classic functional programming principles.";
        buildType = "Simple";
      };
      components = {
        "acme-cadre" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }