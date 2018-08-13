{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
      ghc7 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-core";
        version = "0.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://www.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and Persistent.";
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
          (hsPkgs.path-pieces)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare)
          (hsPkgs.shakespeare-js)
          (hsPkgs.shakespeare-css)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
          (hsPkgs.clientsession)
          (hsPkgs.random)
          (hsPkgs.cereal)
          (hsPkgs.old-locale)
          (hsPkgs.failure)
          (hsPkgs.containers)
          (hsPkgs.monad-control)
          (hsPkgs.enumerator)
          (hsPkgs.cookie)
          (hsPkgs.blaze-html)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.strict-concurrency)
        ] ++ [ (hsPkgs.base) ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.wai-test)
            (hsPkgs.wai)
            (hsPkgs.yesod-core)
            (hsPkgs.bytestring)
            (hsPkgs.hamlet)
            (hsPkgs.shakespeare-css)
            (hsPkgs.shakespeare-js)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ] ++ [ (hsPkgs.base) ];
        };
      };
    };
  }