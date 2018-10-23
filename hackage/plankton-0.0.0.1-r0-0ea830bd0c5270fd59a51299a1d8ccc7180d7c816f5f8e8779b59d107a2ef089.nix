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
        name = "plankton";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/plankton";
      url = "";
      synopsis = "The core of a numeric prelude, taken from numhask";
      description = "The core of a numeric prelude, taken from numhask, because I thought it would be useful to have this as a separate library.";
      buildType = "Simple";
    };
    components = {
      "plankton" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.adjunctions)
        ];
      };
    };
  }