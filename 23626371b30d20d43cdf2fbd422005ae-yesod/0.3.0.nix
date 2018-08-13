{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildtests = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/yesod/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://docs.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and web-routes-quasi.";
      buildType = "Simple";
    };
    components = {
      "yesod" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.authenticate)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.template-haskell)
          (hsPkgs.web-routes)
          (hsPkgs.web-routes-quasi)
          (hsPkgs.hamlet)
          (hsPkgs.transformers)
          (hsPkgs.clientsession)
          (hsPkgs.pureMD5)
          (hsPkgs.random)
          (hsPkgs.control-monad-attempt)
          (hsPkgs.cereal)
          (hsPkgs.old-locale)
          (hsPkgs.persistent)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (_flags.buildtests) [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }