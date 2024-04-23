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
      specVersion = "1.8";
      identifier = { name = "hmt-diagrams"; version = "0.14"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hmt-diagrams";
      url = "";
      synopsis = "Haskell Music Theory Diagrams";
      description = "Haskell Music Theory Diagrams";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."hcg-minus" or (errorHandler.buildDepError "hcg-minus"))
          (hsPkgs."hcg-minus-cairo" or (errorHandler.buildDepError "hcg-minus-cairo"))
          (hsPkgs."hmt" or (errorHandler.buildDepError "hmt"))
          (hsPkgs."html-minimalist" or (errorHandler.buildDepError "html-minimalist"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
        ];
        buildable = true;
      };
    };
  }