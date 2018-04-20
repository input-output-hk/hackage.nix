{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aeson-qq";
          version = "0.4.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "oscar.finnsson@gmail.com";
        author = "Oscar Finnsson";
        homepage = "http://github.com/finnsson/aeson-qq";
        url = "";
        synopsis = "Json Quasiquatation for Haskell.";
        description = "@aeson-qq@ provides json quasiquatation for Haskell.\n\nThis package expose the function @aesonQQ@ that compile time converts json code into a @Data.Aeson.Value@.\n@aesonQQ@ got the signature\n\n> aesonQQ :: QuasiQuoter.\n\nConsult documentation in the module @Data.Aeson.QQ@.";
        buildType = "Simple";
      };
      components = {
        aeson-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.parsec
            hsPkgs.json-qq
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
          ];
        };
      };
    }