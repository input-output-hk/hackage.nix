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
      specVersion = "1.2";
      identifier = {
        name = "joinlist";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Join list - symmetric list type";
      description = "A JoinList - a list type with with cheap catenation.\n\nThe earliest attribution have found is to Richard Bird.\nAn implementation exists in york-lava.\n\nCameo appearances:\n\n*  GHC Team 'View patterns: lightweight views for Haskell'\n\n*  Mark Tullsen 'First Class Patterns'\n\n*  Meng Wang, Jeremy Gibbons, Kazutaka Matsuda, Zhenjiang Hu\n'Translucent Abstraction: Safe Views through Invertible\nProgramming'";
      buildType = "Simple";
    };
    components = {
      "joinlist" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }