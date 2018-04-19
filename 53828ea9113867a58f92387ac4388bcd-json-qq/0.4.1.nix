{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json-qq";
          version = "0.4.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "oscar.finnsson@gmail.com";
        author = "Oscar Finnsson";
        homepage = "http://github.com/finnsson/json-qq";
        url = "";
        synopsis = "Json Quasiquatation library for Haskell.";
        description = "JSON quasiquatation library for Haskell.\n\nThis package only expose functionality so quasiquoters for different JSON-libraries can\nmore easily be constructed.\n\nSee @text-json-qq@ and @aeson-qq@ for libraries that are based on json-qq.";
        buildType = "Simple";
      };
      components = {
        json-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.haskell-src-meta
          ];
        };
      };
    }