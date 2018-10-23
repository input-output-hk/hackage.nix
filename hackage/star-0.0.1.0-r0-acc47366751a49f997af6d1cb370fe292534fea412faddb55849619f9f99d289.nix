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
        name = "star";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/star#readme";
      url = "";
      synopsis = "*-semirings";
      description = "*-semirings of types in base";
      buildType = "Simple";
    };
    components = {
      "star" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }