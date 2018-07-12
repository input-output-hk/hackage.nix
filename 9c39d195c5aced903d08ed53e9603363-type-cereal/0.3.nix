{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "type-cereal";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Type-level serialization of type constructors";
        description = "Any @type-spine@-enabled type constructor can be converted to a\nunique @type-digits@ type-level numeral.";
        buildType = "Simple";
      };
      components = {
        "type-cereal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.data-hash
            hsPkgs.type-spine
            hsPkgs.type-digits
          ];
        };
      };
    }