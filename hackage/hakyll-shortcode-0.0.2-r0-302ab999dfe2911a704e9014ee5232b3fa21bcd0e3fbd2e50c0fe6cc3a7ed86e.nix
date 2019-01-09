{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hakyll-shortcode"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "nbloomf@gmail.com";
      author = "Nathan Bloomfield";
      homepage = "";
      url = "";
      synopsis = "A shortcode extension module for Hakyll";
      description = "WordPress-style shortcodes for the Hakyll static site generator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.regex-posix)
          (hsPkgs.MissingH)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.parsec)
          (hsPkgs.network-uri)
          (hsPkgs.split)
          ];
        };
      tests = {
        "hakyll-shortcode-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.regex-posix)
            (hsPkgs.MissingH)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.parsec)
            (hsPkgs.network-uri)
            (hsPkgs.split)
            ];
          };
        };
      };
    }