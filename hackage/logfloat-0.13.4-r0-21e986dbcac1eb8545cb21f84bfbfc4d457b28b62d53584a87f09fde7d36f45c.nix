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
    flags = { useffi = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "logfloat"; version = "0.13.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007--2021 wren gayle romano";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano";
      homepage = "http://wrengr.org";
      url = "";
      synopsis = "Log-domain floating point numbers";
      description = "This module presents a type for storing numbers in the log-domain.\nThe main reason for doing this is to prevent underflow when\nmultiplying many probabilities as is done in Hidden Markov\nModels. It is also helpful for preventing overflow.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        libs = (pkgs.lib).optional (flags.useffi) (pkgs."m" or (errorHandler.sysDepError "m"));
        buildable = true;
        };
      };
    }