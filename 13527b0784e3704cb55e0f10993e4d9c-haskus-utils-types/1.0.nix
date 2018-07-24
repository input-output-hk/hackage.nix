{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "haskus-utils-types";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Sylvain Henry 2018";
        maintainer = "sylvain@haskus.fr";
        author = "Sylvain Henry";
        homepage = "http://www.haskus.org";
        url = "";
        synopsis = "Haskus utility modules";
        description = "Haskus types utility modules";
        buildType = "Simple";
      };
      components = {
        "haskus-utils-types" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }