{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "tiger";
        version = "1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Doaitse Swierstra";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Tiger Compiler of Universiteit Utrecht";
      description = "Tiger compiler";
      buildType = "Custom";
    };
    components = {
      exes = {
        "tiger" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.uulib)
            (hsPkgs.containers)
            (hsPkgs.uuagc)
            (hsPkgs.uuagc-cabal)
          ];
        };
      };
    };
  }