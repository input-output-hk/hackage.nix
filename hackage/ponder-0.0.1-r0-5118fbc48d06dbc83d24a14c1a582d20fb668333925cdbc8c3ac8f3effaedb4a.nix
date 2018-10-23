{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ponder";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) matt";
      maintainer = "matt76k@gmail.com";
      author = "matt";
      homepage = "https://gihub.com/matt76k/ponder";
      url = "";
      synopsis = "PEG parser combinator";
      description = "Ponder is PEG parser combinator. This Library is experimental.";
      buildType = "Simple";
    };
    components = {
      "ponder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }