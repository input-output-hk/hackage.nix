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
      specVersion = "1.12";
      identifier = { name = "wrapped"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "2019-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-wrapped#readme";
      url = "";
      synopsis = "Provides a single standardized place to hang DerivingVia instances.";
      description = "This exports the newtypes 'Wrapped' and 'Wrapped1', which are meant to hold\ntypeclass implementations derived from other classes (most frequently,\n'Generic' and 'Generic1').  If you implement a general instance of a class,\nadd it as an instance for 'Wrapped' or 'Wrapped1', and users will be able to\nderive it uniformly as @deriving TheClass via Wrapped TheType@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }