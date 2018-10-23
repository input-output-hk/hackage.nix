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
        name = "google-search";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU";
      maintainer = "google-search@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/google-search";
      url = "";
      synopsis = "EDSL for Google and GMail search expressions";
      description = "Construct well-typed search expressions for use in various Google services.";
      buildType = "Simple";
    };
    components = {
      "google-search" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.nats)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }