{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "doc-review";
          version = "0.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "josh.hoyt@galois.com";
        author = "Josh Hoyt";
        homepage = "https://github.com/j3h/doc-review";
        url = "";
        synopsis = "Document review Web application, like http://book.realworldhaskell.org/";
        description = "A standalone Web application that provides for\nparagraph-by-paragraph commentary by document reviewers,\nbased on the user interface from\n<http://book.realworldhaskell.org/>. Any Web page can be\nconfigured to work with the service by adding just a\nlittle bit of Javascript that makes it load the comment\nWeb UI. See the README or the homepage for more information.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "doc-review" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.feed
              hsPkgs.filepath
              hsPkgs.haskell98
              hsPkgs.heist
              hsPkgs.hexpat
              hsPkgs.json
              hsPkgs.MonadCatchIO-transformers
              hsPkgs.MonadRandom
              hsPkgs.monads-fd
              hsPkgs.network
              hsPkgs.old-locale
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.sqlite
              hsPkgs.tagchup
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.xhtml-combinators
              hsPkgs.xml
              hsPkgs.xml-basic
            ];
          };
          "doc-review-test" = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.MonadRandom
              hsPkgs.array
              hsPkgs.text
            ];
          };
        };
      };
    }