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
        name = "jsaddle-hello";
        version = "2.0.0.0";
      };
      license = "MIT";
      copyright = "(c) Hamish Mackenzie";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@gmail.com>";
      author = "Hamish Mackenzie";
      homepage = "https://github.com/ghcjs/jsaddle-hello";
      url = "";
      synopsis = "JSaddle Hello World, an example package";
      description = "This is an implementation of the classic \"Hello World\" program using JSaddle,\nas an example of how to create a minimal JSaddle application.\nPlease submit any suggestions and improvements.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "jsaddle-hello" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.jsaddle)
            (hsPkgs.lens)
            (hsPkgs.text)
          ];
        };
      };
    };
  }