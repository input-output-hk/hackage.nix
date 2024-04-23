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
    flags = { dev = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "time-domain"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "https://github.com/turion/time-domain/";
      url = "";
      synopsis = "A library for time domains and durations";
      description = "This library mainly provides a type class, 'TimeDomain',\nwhich can be used to specify times and durations.\nThere are some instances for standard types from @base@ and @time@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }