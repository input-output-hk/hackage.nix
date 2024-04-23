{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsnoise"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011, Colin Hill";
      maintainer = "Colin Hill <colin.james.hill@gmail.com>";
      author = "Colin Hill <colin.james.hill@gmail.com>";
      homepage = "https://github.com/colinhect/hsnoise";
      url = "";
      synopsis = "A coherent 3d noise library.";
      description = "A coherent 3d noise library loosely based on libnoise.  Currently has an\nimplementation of Perlin noise and ridged multi-fractal noise.  Will\neventually support other noise types as well as noise function combinations.\n\nCode examples included in package.\n\nExample of Perlin noise output image: <http://i.imgur.com/cPOZ2.png>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }