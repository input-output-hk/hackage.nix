{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; library-only = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-mangopay"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Prowdsponsor";
      maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
      author = "JP Moresmau <jpmoresmau@gmail.com>";
      homepage = "https://github.com/prowdsponsor/mangopay";
      url = "";
      synopsis = "Yesod library for MangoPay API access";
      description = "This package provides convenince functions when using both\n@yesod@ and @mangopay@ packages.  It also includes a test\napplication that is built when the library-only flag is set to\n@False@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.mangopay)
          (hsPkgs.http-conduit)
          (hsPkgs.time)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.lifted-base)
          ];
        };
      exes = {
        "yesod-mangopay" = {
          depends = [
            (hsPkgs.yesod-mangopay)
            (hsPkgs.mangopay)
            (hsPkgs.base)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-auth)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-persistent)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.persistent)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.persistent-template)
            (hsPkgs.template-haskell)
            (hsPkgs.shakespeare)
            (hsPkgs.hamlet)
            (hsPkgs.shakespeare-css)
            (hsPkgs.shakespeare-js)
            (hsPkgs.shakespeare-text)
            (hsPkgs.hjsmin)
            (hsPkgs.monad-control)
            (hsPkgs.wai-extra)
            (hsPkgs.yaml)
            (hsPkgs.http-conduit)
            (hsPkgs.directory)
            (hsPkgs.warp)
            (hsPkgs.data-default)
            (hsPkgs.aeson)
            (hsPkgs.conduit)
            (hsPkgs.monad-logger)
            (hsPkgs.fast-logger)
            (hsPkgs.wai-logger)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.wai)
            ];
          };
        };
      };
    }