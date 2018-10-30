{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "graphmod-plugin";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "A reimplementation of graphmod as a source plugin";
      description = "A reimplementation of graphmod as a source plugin.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.ghc)
          (hsPkgs.template-haskell)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.dotgen)
        ];
      };
      exes = {
        "graphmod-plugin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.graphmod-plugin)
          ];
        };
      };
    };
  }