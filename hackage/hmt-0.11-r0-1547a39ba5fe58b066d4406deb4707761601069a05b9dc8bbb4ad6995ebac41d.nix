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
      identifier = { name = "hmt"; version = "0.11"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hmt";
      url = "";
      synopsis = "Haskell Music Theory";
      description = "Haskell music theory library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hcg-minus" or (errorHandler.buildDepError "hcg-minus"))
          (hsPkgs."html-minimalist" or (errorHandler.buildDepError "html-minimalist"))
          (hsPkgs."multiset-comb" or (errorHandler.buildDepError "multiset-comb"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."permutation" or (errorHandler.buildDepError "permutation"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }