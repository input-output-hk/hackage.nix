{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shakespeare-i18n";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/i18n";
      url = "";
      synopsis = "A type-based approach to internationalization.";
      description = "This package uses the same approach of type-safe URLs to create translated content. It has a simple syntax for translators, while allowing the ful power of Haskell for applying complex grammar rules.\n\nThis package was spun off from yesod-core, and therefore the Yesod documentation is a good place to start in understanding this package. Please see <http://www.yesodweb.com/book/i18n> for more information.";
      buildType = "Simple";
    };
    components = {
      "shakespeare-i18n" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
        ];
      };
    };
  }