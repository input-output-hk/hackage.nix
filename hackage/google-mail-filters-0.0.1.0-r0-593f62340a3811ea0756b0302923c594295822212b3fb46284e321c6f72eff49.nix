{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "google-mail-filters"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU";
      maintainer = "google-mail-filters@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/google-mail-filters";
      url = "";
      synopsis = "Write GMail filters and output to importable XML";
      description = "Organise your Google Mail filters as a Haskell EDSL, and produce XML\noutput that can be imported from the GMail web interface.\n\nSee <http://github.com/liyang/google-mail-filters/example.hs>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.google-search)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.xml-conduit)
          ];
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.google-mail-filters)
            (hsPkgs.google-search)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.xml-conduit)
            ];
          };
        };
      };
    }