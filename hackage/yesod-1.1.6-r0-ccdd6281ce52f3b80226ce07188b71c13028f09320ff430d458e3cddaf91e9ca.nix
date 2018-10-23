{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod";
        version = "1.1.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "A RESTful web framework with strong compile-time guarantees of correctness. It also affords space efficient code, highly concurrent loads, and portability to many deployment backends (via the wai package), from CGI to stand-alone serving.\n\nYesod also focuses on developer productivity. Yesod integrates well with tools for all your basic web development (wai, persistent, and shakespeare/hamlet)\n\nThe Yesod documentation site <http://www.yesodweb.com/> has much more information, including on the supporting packages mentioned above.";
      buildType = "Simple";
    };
    components = {
      "yesod" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-json)
          (hsPkgs.yesod-persistent)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-default)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare-js)
          (hsPkgs.shakespeare-css)
          (hsPkgs.warp)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.aeson)
        ];
      };
      exes = {
        "yesod-ghc-wrapper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
          ];
        };
        "yesod-ld-wrapper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
          ];
        };
        "yesod-ar-wrapper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
          ];
        };
        "yesod" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.shakespeare-text)
            (hsPkgs.shakespeare)
            (hsPkgs.shakespeare-js)
            (hsPkgs.shakespeare-css)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.directory)
            (hsPkgs.Cabal)
            (hsPkgs.unix-compat)
            (hsPkgs.containers)
            (hsPkgs.attoparsec)
            (hsPkgs.http-types)
            (hsPkgs.blaze-builder)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.zlib)
            (hsPkgs.tar)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            (hsPkgs.optparse-applicative)
            (hsPkgs.fsnotify)
            (hsPkgs.split)
            (hsPkgs.file-embed)
            (hsPkgs.conduit)
            (hsPkgs.resourcet)
            (hsPkgs.base64-bytestring)
            (hsPkgs.lifted-base)
            (hsPkgs.http-reverse-proxy)
            (hsPkgs.network)
            (hsPkgs.http-conduit)
            (hsPkgs.project-template)
          ];
        };
      };
    };
  }