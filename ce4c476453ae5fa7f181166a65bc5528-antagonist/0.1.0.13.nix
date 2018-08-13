{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "antagonist";
        version = "0.1.0.13";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "marvin.cohrs@gmx.net";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "A web interface to Antisplice dungeons.";
      description = "A web interface to Antisplice dungeons, implemented as a yesod subsite.";
      buildType = "Simple";
    };
    components = {
      "antagonist" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.antisplice)
          (hsPkgs.text)
          (hsPkgs.chatty)
          (hsPkgs.shakespeare-text)
          (hsPkgs.hamlet)
          (hsPkgs.mtl)
          (hsPkgs.shakespeare-css)
          (hsPkgs.shakespeare-js)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
      exes = {
        "ironforge-yesod" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod)
            (hsPkgs.antisplice)
            (hsPkgs.text)
            (hsPkgs.chatty)
            (hsPkgs.shakespeare-text)
            (hsPkgs.hamlet)
            (hsPkgs.mtl)
            (hsPkgs.shakespeare-css)
            (hsPkgs.shakespeare-js)
            (hsPkgs.ironforge)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
        };
      };
    };
  }