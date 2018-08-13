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
      specVersion = "0";
      identifier = {
        name = "darcs-graph";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "darcs-graph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fps)
          ];
        };
      };
    };
  }