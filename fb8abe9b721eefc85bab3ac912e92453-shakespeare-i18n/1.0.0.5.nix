{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shakespeare-i18n";
          version = "1.0.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/shakespearean-templates";
        url = "";
        synopsis = "A type-based approach to internationalization.";
        description = "This package uses a compile-time, type-safe approach to create translated content. It has a simple syntax for translators, while allowing the full power of Haskell for applying complex grammar rules.\n\nThis package was spun off from yesod-core, and therefore the Yesod documentation is a good place to start in understanding this package. Please see <http://www.yesodweb.com/book/shakespearean-templates> for more information.";
        buildType = "Simple";
      };
      components = {
        "shakespeare-i18n" = {
          depends  = [
            hsPkgs.base
            hsPkgs.shakespeare
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.directory
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shakespeare-i18n
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
      };
    }