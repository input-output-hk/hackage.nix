{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hofix-mtl";
          version = "1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "nicolas.frisby@gmail.com";
        author = "nicolas.frisby@gmail.com";
        homepage = "";
        url = "";
        synopsis = "defining @mtl@-ready monads as * -> * fixed-points";
        description = "Declares the * -> * isomorphism class and uses it to declare instances for the @mtl@ interface classes for monads defined using 'star-to-star:Data.StarToStar.Fix'.";
        buildType = "Simple";
      };
      components = {
        hofix-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.star-to-star
            hsPkgs.mtl
            hsPkgs.template-haskell
          ];
        };
      };
    }