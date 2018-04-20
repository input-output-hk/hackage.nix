{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant";
          version = "0.4.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Zalora South East Asia Pte Ltd";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
        homepage = "http://haskell-servant.github.io/";
        url = "";
        synopsis = "A family of combinators for defining webservices APIs";
        description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in the <http://haskell-servant.github.io/tutorial tutorial>.\n\n<https://github.com/haskell-servant/servant-server/blob/master/example/greet.hs Here>'s a runnable example, with comments, that defines a dummy API and\nimplements a webserver that serves this API, using the <http://hackage.haskell.org/package/servant-server servant-server> package.\n\n<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>";
        buildType = "Simple";
      };
      components = {
        servant = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.bytestring-conversion
            hsPkgs.case-insensitive
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.string-conversions
            hsPkgs.network-uri
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.parsec
              hsPkgs.servant
              hsPkgs.string-conversions
              hsPkgs.text
              hsPkgs.url
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant
              hsPkgs.doctest
              hsPkgs.filemanip
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }