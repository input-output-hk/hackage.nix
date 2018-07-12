{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2016 Zalora South East Asia Pte Ltd, Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.readthedocs.org/";
        url = "";
        synopsis = "A family of combinators for defining webservices APIs";
        description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in the <http://haskell-servant.readthedocs.org/en/stable/tutorial/index.html tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>";
        buildType = "Simple";
      };
      components = {
        "servant" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.http-api-data
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.text
            hsPkgs.string-conversions
            hsPkgs.network-uri
            hsPkgs.vault
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.servant
              hsPkgs.string-conversions
              hsPkgs.text
              hsPkgs.url
            ];
          };
          "doctests" = {
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