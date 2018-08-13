{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hpc";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Code Coverage Library for Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hpc" = {
        depends  = if _flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }