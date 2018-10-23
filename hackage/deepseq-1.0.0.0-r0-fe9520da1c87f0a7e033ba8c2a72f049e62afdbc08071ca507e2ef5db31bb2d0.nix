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
        name = "deepseq";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Fully evaluate data structures";
      description = "This package provides a \\\"deep\\\" version of seq, for fully evluating\ndata structures.";
      buildType = "Simple";
    };
    components = {
      "deepseq" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }