{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "getopt-generics";
        version = "0.11.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Zalora South East Asia Pte Ltd";
      maintainer = "linh.nguyen@zalora.com, soenke.hahn@zalora.com";
      author = "Linh Nguyen, Sönke Hahn";
      homepage = "https://github.com/zalora/getopt-generics#readme";
      url = "";
      synopsis = "Create command line interfaces with ease";
      description = "Create command line interfaces with ease";
      buildType = "Simple";
    };
    components = {
      "getopt-generics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.base-orphans)
          (hsPkgs.generics-sop)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.base-orphans)
            (hsPkgs.generics-sop)
            (hsPkgs.tagged)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.silently)
            (hsPkgs.filepath)
            (hsPkgs.safe)
          ];
        };
      };
    };
  }