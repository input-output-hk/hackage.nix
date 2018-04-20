{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hydrogen-version";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "julfleischer@paypal.com";
        author = "Julian Fleischer";
        homepage = "https://github.com/scravy/hydrogen-version";
        url = "";
        synopsis = "Hydrogen Syntax";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydrogen-version = {
          depends  = [ hsPkgs.base ];
        };
      };
    }