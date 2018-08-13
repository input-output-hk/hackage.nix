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
        name = "informative";
        version = "0.1.0.14";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "http://doomanddarkness.eu/pub/informative";
      url = "";
      synopsis = "A yesod subsite serving a wiki.";
      description = "A yesod subsite serving a wiki.";
      buildType = "Simple";
    };
    components = {
      "informative" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.text)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.monad-logger)
          (hsPkgs.persistent)
          (hsPkgs.pandoc)
          (hsPkgs.shakespeare)
          (hsPkgs.time)
          (hsPkgs.csv)
          (hsPkgs.yesod-auth)
          (hsPkgs.http-conduit)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.highlighting-kate)
          (hsPkgs.time-locale-compat)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "informative-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod)
            (hsPkgs.text)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.monad-logger)
            (hsPkgs.persistent)
            (hsPkgs.pandoc)
            (hsPkgs.shakespeare)
            (hsPkgs.time)
            (hsPkgs.csv)
            (hsPkgs.yesod-auth)
            (hsPkgs.http-conduit)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.highlighting-kate)
            (hsPkgs.time-locale-compat)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }