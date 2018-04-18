{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://docs.yesodweb.com/";
        url = "";
        synopsis = "Creation of type-safe, RESTful web applications.";
        description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://docs.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and web-routes-quasi.";
        buildType = "Simple";
      };
      components = {
        yesod = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.authenticate
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.utf8-string
            hsPkgs.template-haskell
            hsPkgs.web-routes-quasi
            hsPkgs.hamlet
            hsPkgs.blaze-builder
            hsPkgs.transformers
            hsPkgs.clientsession
            hsPkgs.pureMD5
            hsPkgs.random
            hsPkgs.control-monad-attempt
            hsPkgs.cereal
            hsPkgs.dataenc
            hsPkgs.old-locale
            hsPkgs.persistent
            hsPkgs.neither
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.data-object
            hsPkgs.network
            hsPkgs.email-validate
            hsPkgs.process
            hsPkgs.web-routes
            hsPkgs.xss-sanitize
          ];
        };
        exes = {
          yesod = {
            depends  = [ hsPkgs.parsec ];
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
        };
      };
    }