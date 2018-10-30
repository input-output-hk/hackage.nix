{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "getopt-generics";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Zalora South East Asia Pte Ltd";
      maintainer = "linh.nguyen@zalora.com, soenke.hahn@zalora.com";
      author = "Linh Nguyen, Sönke Hahn";
      homepage = "";
      url = "";
      synopsis = "Simple command line argument parsing";
      description = "\"getopt-generics\" tries to make it very simple to create command line argument parsers. An introductory example can be found in the <https://github.com/zalora/getopt-generics#getopt-generics README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.generics-sop)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.silently)
            (hsPkgs.tagged)
          ];
        };
      };
    };
  }