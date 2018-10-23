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
        name = "type-level-bst";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Yusuke Matsushita 2014";
      maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
      author = "Yusuke Matsushita";
      homepage = "https://github.com/Kinokkory/type-level-bst";
      url = "";
      synopsis = "type-level binary search trees in haskell";
      description = "An efficient implementation of type-level binary search trees and of dependently-typed extensible records and unions.\n\nMore information can be found in the <http://hackage.haskell.org/package/type-level-bst hackage's haddock> or the <http://kinokkory.github.io/type-level-bst/ updated haddock>.";
      buildType = "Simple";
    };
    components = {
      "type-level-bst" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }