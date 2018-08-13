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
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "Generate pretty graphs of darcs repository activity";
      description = "Generate pretty graphs of darcs repository activity";
      buildType = "Custom";
    };
    components = {
      exes = {
        "darcs-graph" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }