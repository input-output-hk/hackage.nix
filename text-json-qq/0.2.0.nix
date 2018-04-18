{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "text-json-qq";
          version = "0.2.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "oscar.finnsson@gmail.com";
        author = "Oscar Finnsson";
        homepage = "http://github.com/finnsson/text-json-qq";
        url = "";
        synopsis = "Json Quasiquatation for Haskell.";
        description = "@text-json-qq@ provides json quasiquatation for Haskell.\n\nThis package expose the function @jsonQQ@ that compile time converts json code into a @Text.JSON.JSValue@.\n@jsonQQ@ got the signature\n\n> jsonQQ :: QuasiQuoter.\n\nConsult documentation in the module @Text.JSON.QQ@.";
        buildType = "Simple";
      };
      components = {
        text-json-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.json
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
          ];
        };
      };
    }