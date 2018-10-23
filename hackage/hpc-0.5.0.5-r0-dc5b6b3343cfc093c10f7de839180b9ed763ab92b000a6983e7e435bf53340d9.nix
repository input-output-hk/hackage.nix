{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hpc";
        version = "0.5.0.5";
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
        depends  = if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.old-time)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }