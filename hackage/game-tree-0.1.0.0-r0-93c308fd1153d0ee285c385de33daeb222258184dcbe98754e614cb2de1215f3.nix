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
        name = "game-tree";
        version = "0.1.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright: 2009 Colin Adams";
      maintainer = "colin@colina.demon.co.uk";
      author = "Colin Adams";
      homepage = "";
      url = "";
      synopsis = "Searching game trees with alpha-beta pruning";
      description = "A data type for game trees, as used in decision theory and game theory,\nalong with standard algorithms for searching the tree using alpha-beta pruning.\nCan be used as the basis of an AI for two-player zero-sum  games, such as chess.";
      buildType = "Simple";
    };
    components = {
      "game-tree" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }