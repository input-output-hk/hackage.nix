{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-properties = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "angle";
        version = "0.8.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "Ben Moon 2015";
      maintainer = "guiltydolphin@gmail.com";
      author = "Ben Moon";
      homepage = "";
      url = "";
      synopsis = "A small, general-purpose programming language.";
      description = "An implementation of a small, weak and dynamically typed,\ninterpreted, functional programming language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.process)
        ];
      };
      exes = {
        "angle" = {
          depends  = [
            (hsPkgs.angle)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.split)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ];
        };
      };
      tests = {
        "properties" = {
          depends  = pkgs.lib.optionals (!(!flags.test-properties)) [
            (hsPkgs.base)
            (hsPkgs.angle)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "parsing" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.angle)
          ];
        };
        "scanning" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.angle)
          ];
        };
        "operations" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.angle)
          ];
        };
      };
    };
  }