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
      specVersion = "0";
      identifier = {
        name = "hinvaders";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Bernie Pope <bjpop@csse.unimelb.edu.au>";
      homepage = "http://www.cs.mu.oz.au/~bjpop/code.html";
      url = "";
      synopsis = "Space Invaders";
      description = "A simple clone of Space Invaders for playing on one's terminal.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hinvaders" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }