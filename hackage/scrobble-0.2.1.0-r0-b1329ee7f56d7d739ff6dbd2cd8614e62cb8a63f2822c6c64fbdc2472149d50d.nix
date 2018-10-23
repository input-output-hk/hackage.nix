{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "scrobble";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Scrobbling server.";
      description = "A library providing server-side support\nfor the Audioscrobbler Realtime Submission protocol:\n<http://www.audioscrobbler.net/development/protocol/>";
      buildType = "Simple";
    };
    components = {
      "scrobble" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.url)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.pureMD5)
          (hsPkgs.MissingH)
          (hsPkgs.curl)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "scrobble-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.url)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.MissingH)
            (hsPkgs.curl)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }