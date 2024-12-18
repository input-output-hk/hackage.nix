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
      specVersion = "1.2";
      identifier = { name = "RandomDotOrg"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mad.one@gmail.com";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "Interface to random numbers on random.org";
      description = "Using this package you can generate random numbers\n(based on the atmosphere, not a PRNG) via the random.org website";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP-Simple" or (errorHandler.buildDepError "HTTP-Simple"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
    };
  }