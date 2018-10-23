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
        name = "melody";
        version = "0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "danny.gratzer@gmail.com";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A functional scripting language";
      description = "A scripting language meant to replace\nshell modeled after Joy.";
      buildType = "Simple";
    };
    components = {
      "melody" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.either)
          (hsPkgs.ParsecTools)
        ];
      };
      exes = {
        "imelody" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.melody)
          ];
        };
      };
      tests = {
        "test-melody" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
            (hsPkgs.melody)
          ];
        };
      };
    };
  }