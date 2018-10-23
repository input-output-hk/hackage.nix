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
        name = "slate";
        version = "0.11.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2017, evuez";
      maintainer = "helloevuez@gmail.com";
      author = "evuez";
      homepage = "https://github.com/evuez/slate#readme";
      url = "";
      synopsis = "A note taking CLI tool.";
      description = "Please see the README on Github at <https://github.com/evuez/slate#readme>";
      buildType = "Simple";
    };
    components = {
      "slate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.htoml)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.string-conversions)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "slate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.htoml)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.slate)
            (hsPkgs.string-conversions)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "slate-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.htoml)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.slate)
            (hsPkgs.string-conversions)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }