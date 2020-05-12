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
      specVersion = "2.4";
      identifier = { name = "hs-speedscope"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Convert an eventlog into the speedscope json format";
      description = "Convert an eventlog into the speedscope json format. The interactive visualisation\ndisplays an approximate trace of the program and summary views akin to .prof files.\nThere is also support for parallel programs, each capability is rendered in its own\nprofile.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          ];
        buildable = true;
        };
      exes = {
        "hs-speedscope" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-speedscope" or (errorHandler.buildDepError "hs-speedscope"))
            ];
          buildable = true;
          };
        };
      };
    }