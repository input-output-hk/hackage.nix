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
      specVersion = "1.6";
      identifier = { name = "Noise"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Daniel <hugodaniel@hackological.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell coherent noise generator";
      description = "A Haskell coherent noise generator roughly based on libnoise.\nFor more information on libnoise, please check: <http://libnoise.sourceforge.net>.\n\nThe noise modules were extensively profiled and benchmarked,\nthe slower pure functions were rewritten in C.\nThe main objective of this packer is to provide a simple interface\nto compose noise modules.\n\nYou could compose several noise modules like this:\n\n> myPerlin = perlin `isSourceOf` scalebias { scale = 1.0 }\n`isSourceOf` absolute\n> myComposition = perlin { perlinFrequency = 0.123 }\n`andModule` billow { billowOctaves = 12 }\n`andModule` myPerlin\n`areSourcesOf`\nselect { upperBound = 0.7, lowerBound = 0.2 }\n\nThis is a 3D noise package, to get a value you need to specify a\ntriple:\n\n> getValue myComposition (-0.1, -0.5, 0.76)\n\nFor more information please read the documentation of each module\nbellow.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
    };
  }