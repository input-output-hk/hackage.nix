{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "type-booleans";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Type-level booleans via type-families";
        description = "Type-level booleans with basic operators that short-circuit as\nmuch as possible.";
        buildType = "Simple";
      };
      components = {
        "type-booleans" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }