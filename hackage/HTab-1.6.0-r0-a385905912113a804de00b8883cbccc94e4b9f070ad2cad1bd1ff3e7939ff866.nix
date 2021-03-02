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
    flags = { static = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "HTab"; version = "1.6.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "guillaumh@gmail.com";
      author = "Guillaume Hoffmann, Carlos Areces, Daniel Gorín, Juan Heguiabehere";
      homepage = "http://www.glyc.dc.uba.ar/intohylo/htab.php";
      url = "";
      synopsis = "Tableau based theorem prover for hybrid logics";
      description = "Tableau based theorem prover for hybrid logics";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htab" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."hylolib" or (errorHandler.buildDepError "hylolib"))
            (hsPkgs."hylolib" or (errorHandler.buildDepError "hylolib"))
            ];
          buildable = true;
          };
        };
      };
    }