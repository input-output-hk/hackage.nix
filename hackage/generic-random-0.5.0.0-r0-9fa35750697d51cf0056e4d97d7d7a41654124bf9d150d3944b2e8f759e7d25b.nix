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
    flags = { boltzmann = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-random"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "http://github.com/lysxia/generic-random";
      url = "";
      synopsis = "Generic random generators";
      description = "Please see the README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ] ++ pkgs.lib.optional (flags.boltzmann) (hsPkgs."boltzmann-samplers" or (errorHandler.buildDepError "boltzmann-samplers"));
        buildable = true;
      };
    };
  }