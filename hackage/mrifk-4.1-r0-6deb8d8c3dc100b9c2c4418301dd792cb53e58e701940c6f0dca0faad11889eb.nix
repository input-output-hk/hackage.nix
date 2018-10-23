{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mrifk";
        version = "4.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ennisbaradine@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Decompiles Glulx files";
      description = "Update of the mrifk decompiler to modern Haskell";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mrifk" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }