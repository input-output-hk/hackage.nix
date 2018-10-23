{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test = false;
      ghc7 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-core";
        version = "0.7.0.1";
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
      "yesod-core" = {
        depends  = [
          (hsPkgs.time)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.web-routes-quasi)
          (hsPkgs.hamlet)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
          (hsPkgs.clientsession)
          (hsPkgs.random)
          (hsPkgs.cereal)
          (hsPkgs.old-locale)
          (hsPkgs.web-routes)
          (hsPkgs.failure)
          (hsPkgs.containers)
          (hsPkgs.monad-peel)
          (hsPkgs.enumerator)
          (hsPkgs.cookie)
          (hsPkgs.blaze-html)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
          ] ++ pkgs.lib.optionals (flags.test) [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.wai-test)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }