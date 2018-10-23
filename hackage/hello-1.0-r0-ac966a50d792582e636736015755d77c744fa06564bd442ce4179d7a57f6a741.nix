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
        name = "hello";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "http://www.haskell.org/hello/";
      url = "";
      synopsis = "Hello World, an example package";
      description = "";
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