{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      dev = false;
      library-only = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "espial";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2018 Jon Schoning";
      maintainer = "jonschoning@gmail.com";
      author = "Jon Schoning";
      homepage = "https://github.com/jonschoning/espial";
      url = "";
      synopsis = "Espial is an open-source, web-based bookmarking server.";
      description = "\nEspial is an open-source, web-based bookmarking server.\n- Yesod + sqlite3\n- multi-user (w/ privacy scopes)\n- tags, stars, editing, deleting";
      buildType = "Simple";
    };
    components = {
      "espial" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bcrypt)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.classy-prelude)
          (hsPkgs.classy-prelude-conduit)
          (hsPkgs.classy-prelude-yesod)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.esqueleto)
          (hsPkgs.fast-logger)
          (hsPkgs.file-embed)
          (hsPkgs.foreign-store)
          (hsPkgs.hjsmin)
          (hsPkgs.hscolour)
          (hsPkgs.http-conduit)
          (hsPkgs.iso8601-time)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.pretty-show)
          (hsPkgs.safe)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-logger)
          (hsPkgs.warp)
          (hsPkgs.yaml)
          (hsPkgs.yesod)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-static)
        ];
      };
      exes = {
        "espial" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bcrypt)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.classy-prelude)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.classy-prelude-yesod)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.espial)
            (hsPkgs.esqueleto)
            (hsPkgs.fast-logger)
            (hsPkgs.file-embed)
            (hsPkgs.foreign-store)
            (hsPkgs.hjsmin)
            (hsPkgs.hscolour)
            (hsPkgs.http-conduit)
            (hsPkgs.iso8601-time)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.pretty-show)
            (hsPkgs.safe)
            (hsPkgs.shakespeare)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-logger)
            (hsPkgs.warp)
            (hsPkgs.yaml)
            (hsPkgs.yesod)
            (hsPkgs.yesod-auth)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-static)
          ];
        };
        "migration" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bcrypt)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.classy-prelude)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.classy-prelude-yesod)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.espial)
            (hsPkgs.esqueleto)
            (hsPkgs.fast-logger)
            (hsPkgs.file-embed)
            (hsPkgs.foreign-store)
            (hsPkgs.hjsmin)
            (hsPkgs.hscolour)
            (hsPkgs.http-conduit)
            (hsPkgs.iso8601-time)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.pretty-show)
            (hsPkgs.safe)
            (hsPkgs.shakespeare)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-logger)
            (hsPkgs.warp)
            (hsPkgs.yaml)
            (hsPkgs.yesod)
            (hsPkgs.yesod-auth)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-static)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bcrypt)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.classy-prelude)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.classy-prelude-yesod)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.espial)
            (hsPkgs.esqueleto)
            (hsPkgs.fast-logger)
            (hsPkgs.file-embed)
            (hsPkgs.foreign-store)
            (hsPkgs.hjsmin)
            (hsPkgs.hscolour)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.iso8601-time)
            (hsPkgs.microlens)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.pretty-show)
            (hsPkgs.safe)
            (hsPkgs.shakespeare)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-logger)
            (hsPkgs.warp)
            (hsPkgs.yaml)
            (hsPkgs.yesod)
            (hsPkgs.yesod-auth)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-test)
          ];
        };
      };
    };
  }