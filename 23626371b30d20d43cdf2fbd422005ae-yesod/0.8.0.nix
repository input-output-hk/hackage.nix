{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      ghc7 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod";
        version = "0.8.0";
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
      "yesod" = {
        depends  = [
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-json)
          (hsPkgs.yesod-persistent)
          (hsPkgs.yesod-static)
          (hsPkgs.yesod-form)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.hamlet)
          (hsPkgs.warp)
          (hsPkgs.mime-mail)
          (hsPkgs.hjsmin)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "yesod" = {
          depends  = [
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.directory)
            (hsPkgs.Cabal)
            (hsPkgs.unix-compat)
            (hsPkgs.containers)
            (hsPkgs.attoparsec-text)
            (hsPkgs.http-types)
            (hsPkgs.blaze-builder)
            (hsPkgs.direct-plugins)
          ] ++ [ (hsPkgs.base) ];
        };
      };
    };
  }