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
      specVersion = "1.0";
      identifier = { name = "relative-date"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "";
      url = "";
      synopsis = "Durations and generalized time parsing";
      description = "Relative-date provides two modules.  Data.Duration gives\nfunctions for the creation of durations of time, represented\nas functions from DateTime to DateTime.  Data.DateTime.Parser\npresents miscellaneous parsers for handling time descriptions\nof varying levels of detail.  The library also can parse\ndescriptions of repeated times, returning a (possibly infinite)\nlist of DateTimes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."concatenative" or (errorHandler.buildDepError "concatenative"))
          (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }