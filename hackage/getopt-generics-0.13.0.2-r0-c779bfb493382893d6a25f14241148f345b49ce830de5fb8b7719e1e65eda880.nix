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
        version = "0.13.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Zalora South East Asia Pte Ltd";
      maintainer = "linh.nguyen@zalora.com, soenkehahn@gmail.com";
      author = "Linh Nguyen, Sönke Hahn";
      homepage = "https://github.com/soenkehahn/getopt-generics#readme";
      url = "";
      synopsis = "Create command line interfaces with ease";
      description = "Create command line interfaces with ease";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.base-orphans)
            (hsPkgs.filepath)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.safe)
            (hsPkgs.silently)
            (hsPkgs.tagged)
          ];
        };
      };
    };
  }