{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { threaded = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hello";
        version = "1.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "http://www.haskell.org/hello/";
      url = "";
      synopsis = "Hello World, an example package";
      description = "This is an implementation of the classic \"Hello World\" program in\nHaskell, as an example of how to create a minimal Haskell\napplication using Cabal and Hackage.  Please submit any suggestions and\nimprovements.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hello" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }