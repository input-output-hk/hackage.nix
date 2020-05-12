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
      specVersion = "1.2";
      identifier = { name = "hgen"; version = "1.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "areces@loria.fr";
      author = "Carlos Areces and Juan Heguiabehere";
      homepage = "http://www.glyc.dc.uba.ar/intohylo/hgen.php";
      url = "";
      synopsis = "Random generation of modal and hybrid logic formulas";
      description = "Random generation of modal and hybrid logic formulas";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hgen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hylolib" or (errorHandler.buildDepError "hylolib"))
            (hsPkgs."hylolib" or (errorHandler.buildDepError "hylolib"))
            ];
          buildable = true;
          };
        };
      };
    }