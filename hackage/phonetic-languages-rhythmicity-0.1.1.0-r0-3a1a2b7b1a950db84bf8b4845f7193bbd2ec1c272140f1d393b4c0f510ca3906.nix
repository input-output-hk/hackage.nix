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
      identifier = {
        name = "phonetic-languages-rhythmicity";
        version = "0.1.1.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-rhythmicity";
      url = "";
      synopsis = "Allows to estimate the rhythmicity metrices for the text (usually, the Ukrainian poetic one)";
      description = "Allows to estimate (somewhat to say, evaluate) the rhythmicity metrices for the text (usually, the Ukrainian poetic one, but it can be extrapolated to other ones). Inspired by the ancient Greek and Latin poetry.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }