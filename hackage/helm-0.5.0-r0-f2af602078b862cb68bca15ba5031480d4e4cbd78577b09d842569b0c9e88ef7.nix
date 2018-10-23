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
        name = "helm";
        version = "0.5.0";
      };
      license = "MIT";
      copyright = "(c) 2013, Zack Corr";
      maintainer = "Zack Corr <zack@z0w0.me>";
      author = "Zack Corr";
      homepage = "http://github.com/z0w0/helm";
      url = "";
      synopsis = "A functionally reactive game engine.";
      description = "A functionally reactive game engine, with headgear to protect you\nfrom the headache of game development provided.";
      buildType = "Simple";
    };
    components = {
      "helm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.pango)
          (hsPkgs.containers)
          (hsPkgs.elerea)
          (hsPkgs.filepath)
          (hsPkgs.SDL)
          (hsPkgs.random)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "helm-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.elerea)
            (hsPkgs.SDL)
          ];
        };
      };
    };
  }