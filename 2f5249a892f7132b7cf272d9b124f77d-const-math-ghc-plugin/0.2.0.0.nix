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
      specVersion = "1.8";
      identifier = {
        name = "const-math-ghc-plugin";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker, John Lato";
      homepage = "";
      url = "";
      synopsis = "Compiler plugin for constant math elimination";
      description = "This library implements elimination of constant math expressions.";
      buildType = "Simple";
    };
    components = {
      "const-math-ghc-plugin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }