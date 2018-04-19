{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      ghc7 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod";
          version = "0.6.7";
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
            hsPkgs.time
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.web-routes-quasi
            hsPkgs.hamlet
            hsPkgs.blaze-builder
            hsPkgs.transformers
            hsPkgs.clientsession
            hsPkgs.pureMD5
            hsPkgs.random
            hsPkgs.cereal
            hsPkgs.base64-bytestring
            hsPkgs.old-locale
            hsPkgs.persistent
            hsPkgs.neither
            hsPkgs.network
            hsPkgs.email-validate
            hsPkgs.web-routes
            hsPkgs.xss-sanitize
            hsPkgs.data-default
            hsPkgs.failure
            hsPkgs.containers
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          yesod = {
            depends  = [
              hsPkgs.parsec
            ] ++ [ hsPkgs.base ];
          };
          runtests = {
            depends  = [
              hsPkgs.base
            ] ++ pkgs.lib.optionals _flags.test [
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