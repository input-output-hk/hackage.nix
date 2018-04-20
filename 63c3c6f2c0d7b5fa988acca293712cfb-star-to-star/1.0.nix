{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "star-to-star";
          version = "1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "nicolas.frisby@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "the * -> * types, operators, and covariant instances.";
        description = "Fundamental * -> * types, operators, and covariant instances.";
        buildType = "Simple";
      };
      components = {
        star-to-star = {
          depends  = [ hsPkgs.base ];
        };
      };
    }