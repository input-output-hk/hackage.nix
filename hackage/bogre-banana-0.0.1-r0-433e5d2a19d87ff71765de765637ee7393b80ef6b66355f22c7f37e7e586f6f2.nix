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
      specVersion = "1.4";
      identifier = {
        name = "bogre-banana";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "David Michael Taro Eichmann";
      maintainer = "EichmannD at gmail dot com";
      author = "David Eichmann";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Boge-Banana is a 3D game engine using the Reactive-Banana FRP library, the HOIS library for input, and the HOGRE library for output. An introductory tutorial is avilable at http:\\/\\/www.haskell.org\\/haskellwiki\\/User_talk:DavidE.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.reactive-banana)
          (hsPkgs.hois)
          (hsPkgs.monad-control)
          (hsPkgs.hogre)
        ];
        libs = [ (pkgs."stdc++") ];
      };
      exes = {
        "bogre-banana-snake" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.hois)
            (hsPkgs.hogre)
          ];
        };
      };
    };
  }