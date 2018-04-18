{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
      buildsamples = false;
      nolib = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/code.html";
        url = "";
        synopsis = "A library for creating RESTful web applications.";
        description = "This package stradles the line between framework and simply a controller. It provides minimal support for model and view, mostly focusing on making a controller which adheres strictly to RESTful principles.";
        buildType = "Simple";
      };
      components = {
        yesod = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.split
            hsPkgs.authenticate
            hsPkgs.predicates
            hsPkgs.bytestring
            hsPkgs.web-encodings
            hsPkgs.data-object
            hsPkgs.data-object-yaml
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.control-monad-attempt
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.convertible-text
            hsPkgs.HStringTemplate
            hsPkgs.data-object-json
            hsPkgs.attempt
            hsPkgs.template-haskell
            hsPkgs.failure
            hsPkgs.safe-failure
          ];
        };
        exes = {
          yesod = {
            depends  = [
              hsPkgs.file-embed
            ];
          };
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          helloworld = {};
          hellotemplate = {};
          fact = {};
          i18n = {};
          pretty-yaml = {};
          tweedle = {};
        };
      };
    }