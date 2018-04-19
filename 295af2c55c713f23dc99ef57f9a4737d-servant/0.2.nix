{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Zalora South East Asia Pte Ltd";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
        homepage = "http://haskell-servant.github.io/";
        url = "";
        synopsis = "A family of combinators for defining webservices APIs and serving them";
        description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in <http://haskell-servant.github.io/getting-started/ the getting started> guide.\n\n<https://github.com/haskell-servant/servant/blob/master/example/greet.hs Here>'s a runnable example, with comments, that defines a dummy API and\nimplements a webserver that serves this API.";
        buildType = "Simple";
      };
      components = {
        servant = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.either
            hsPkgs.http-types
            hsPkgs.network-uri
            hsPkgs.parsec
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.string-conversions
            hsPkgs.system-filepath
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-app-static
            hsPkgs.warp
          ];
        };
        exes = {
          greet = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant
              hsPkgs.aeson
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.text
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.either
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.http-types
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.parsec
              hsPkgs.servant
              hsPkgs.string-conversions
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
            ];
          };
        };
      };
    }