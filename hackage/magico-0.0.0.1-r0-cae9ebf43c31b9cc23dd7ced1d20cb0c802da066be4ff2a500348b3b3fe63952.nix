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
      identifier = { name = "magico"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/magico";
      url = "";
      synopsis = "Compute solutions for Magico puzzle";
      description = "Compute solutions for Magico puzzle:\n<http://www.spectra-verlag.de/oesterreich/SID=0/shopneu/lernspiel/lern7.php3>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "magico" = {
          depends = [
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }