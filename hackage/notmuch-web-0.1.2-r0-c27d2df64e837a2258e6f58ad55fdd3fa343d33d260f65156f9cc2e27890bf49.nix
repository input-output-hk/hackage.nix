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
      no-icu = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "notmuch-web";
        version = "0.1.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "John Lenz <lenz@math.uic.edu>";
      author = "John Lenz <lenz@math.uic.edu>";
      homepage = "https://bitbucket.org/wuzzeb/notmuch-web";
      url = "";
      synopsis = "A web interface to the notmuch email indexer";
      description = "An email client for the notmuch email indexer (<http://notmuchmail.org>),\nbuilt using Yesod.  This project implements a web server and uses bootstrap\nand jquery for the UI.  The client is fully functional, with searching, viewing,\nand composing email messages.  See\n<https://bitbucket.org/wuzzeb/notmuch-web/src/tip/ChangeLog> for recent changes.";
      buildType = "Simple";
    };
    components = {
      "notmuch-web" = {
        depends  = if flags.no-icu
          then [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.email-validate)
            (hsPkgs.filepath)
            (hsPkgs.hamlet)
            (hsPkgs.hashable)
            (hsPkgs.hjsmin)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lifted-base)
            (hsPkgs.markdown)
            (hsPkgs.mime-mail)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.process-conduit)
            (hsPkgs.pwstore-fast)
            (hsPkgs.random)
            (hsPkgs.tagsoup)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.xss-sanitize)
            (hsPkgs.yaml)
            (hsPkgs.yesod)
            (hsPkgs.yesod-auth)
            (hsPkgs.yesod-static)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-conduit)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.email-validate)
            (hsPkgs.filepath)
            (hsPkgs.hamlet)
            (hsPkgs.hashable)
            (hsPkgs.hjsmin)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lifted-base)
            (hsPkgs.markdown)
            (hsPkgs.mime-mail)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.process-conduit)
            (hsPkgs.pwstore-fast)
            (hsPkgs.random)
            (hsPkgs.tagsoup)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.text-icu)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.xss-sanitize)
            (hsPkgs.yaml)
            (hsPkgs.yesod)
            (hsPkgs.yesod-auth)
            (hsPkgs.yesod-static)
          ];
      };
      exes = {
        "notmuch-web" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.notmuch-web)
            (hsPkgs.pwstore-fast)
            (hsPkgs.text)
            (hsPkgs.yesod)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.notmuch-web)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.mime-mail)
            (hsPkgs.text)
            (hsPkgs.yesod)
            (hsPkgs.yesod-test)
            (hsPkgs.yesod-core)
          ];
        };
      };
    };
  }