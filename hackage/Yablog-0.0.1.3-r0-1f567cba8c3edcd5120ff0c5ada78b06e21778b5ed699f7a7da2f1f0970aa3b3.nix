{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dev = false;
      library-only = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Yablog";
        version = "0.0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hiromi ISHII";
      author = "Hiromi ISHII";
      homepage = "http://gitweb.konn-san.com/repo/Yablog/tree/master";
      url = "";
      synopsis = "A simple blog engine powered by Yesod.";
      description = "A simple blog engine powered by Yesod.";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "Yablog" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod-platform)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-auth)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-default)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-newsfeed)
            (hsPkgs.mime-mail)
            (hsPkgs.clientsession)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.text)
            (hsPkgs.persistent)
            (hsPkgs.case-insensitive)
            (hsPkgs.http-types)
            (hsPkgs.persistent-mongoDB)
            (hsPkgs.template-haskell)
            (hsPkgs.hamlet)
            (hsPkgs.shakespeare-css)
            (hsPkgs.shakespeare-js)
            (hsPkgs.shakespeare-text)
            (hsPkgs.hjsmin)
            (hsPkgs.monad-control)
            (hsPkgs.wai-extra)
            (hsPkgs.yaml)
            (hsPkgs.http-conduit)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.xml-hamlet)
            (hsPkgs.xml-conduit)
          ];
        };
      };
    };
  }