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
      specVersion = "1.8.0.2";
      identifier = {
        name = "solve";
        version = "1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Solving simple games";
      description = "A library for solving and analyzing finite two-player games (e.g.,\nFox & Hounds).";
      buildType = "Simple";
    };
    components = {
      "solve" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "solve" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }