{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "monadacme";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "";
        url = "";
        synopsis = "The Acme and AcmeT monads.";
        description = "The Acme and AcmeT monads.";
        buildType = "Simple";
      };
      components = {
        "monadacme" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }