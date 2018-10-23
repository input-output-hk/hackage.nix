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
        name = "ghcjs-dom-hello";
        version = "3.0.0.0";
      };
      license = "MIT";
      copyright = "(c) Hamish Mackenzie";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@gmail.com>";
      author = "Hamish Mackenzie";
      homepage = "https://github.com/ghcjs/ghcjs-dom-hello";
      url = "";
      synopsis = "GHCJS DOM Hello World, an example package";
      description = "This is an implementation of the classic \"Hello World\" program using GHCJS DOM,\nas an example of how to create a minimal GHCJS DOM application.\nPlease submit any suggestions and improvements.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghcjs-dom-hello" = {
          depends  = [
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.ghcjs-dom)
          ];
        };
      };
    };
  }