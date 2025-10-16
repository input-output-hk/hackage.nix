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
      specVersion = "2.0";
      identifier = { name = "hgen"; version = "1.5.0"; };
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
            (hsPkgs."hylolib" or (errorHandler.buildDepError "hylolib"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
    };
  }