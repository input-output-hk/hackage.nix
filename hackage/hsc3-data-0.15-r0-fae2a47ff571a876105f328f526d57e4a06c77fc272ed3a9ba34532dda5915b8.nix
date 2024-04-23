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
      identifier = { name = "hsc3-data"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2013-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-data";
      url = "";
      synopsis = "haskell supercollider data";
      description = "Data related functions useful when working with SC3.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."hcg-minus" or (errorHandler.buildDepError "hcg-minus"))
          (hsPkgs."hmt" or (errorHandler.buildDepError "hmt"))
          (hsPkgs."hsc3-lang" or (errorHandler.buildDepError "hsc3-lang"))
          (hsPkgs."hsc3-plot" or (errorHandler.buildDepError "hsc3-plot"))
          (hsPkgs."hsc3-sf-hsndfile" or (errorHandler.buildDepError "hsc3-sf-hsndfile"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."SVGPath" or (errorHandler.buildDepError "SVGPath"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
        ];
        buildable = true;
      };
    };
  }