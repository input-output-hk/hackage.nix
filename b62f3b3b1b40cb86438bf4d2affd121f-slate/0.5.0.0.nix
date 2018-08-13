{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "slate";
        version = "0.5.0.0";
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
          (hsPkgs.optparse-applicative)
        ];
      };
      exes = {
        "slate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.slate)
          ];
        };
      };
      tests = {
        "slate-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.slate)
          ];
        };
      };
    };
  }