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
      specVersion = "1.6";
      identifier = {
        name = "lambda-placeholders";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@mirman.com";
      author = "Matthew Mirman";
      homepage = "https://github.com/mmirman/lambda-placeholders";
      url = "";
      synopsis = "A library to emulate laceholders similar to Scala.";
      description = "A description of the workings of placeholders in Scala can be found here: <http://www.artima.com/pins1ed/functions-and-closures.html#8.5>.";
      buildType = "Simple";
    };
    components = {
      "lambda-placeholders" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }