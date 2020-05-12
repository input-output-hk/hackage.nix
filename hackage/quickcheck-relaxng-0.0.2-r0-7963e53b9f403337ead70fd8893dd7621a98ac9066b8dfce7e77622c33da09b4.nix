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
      specVersion = "1.2";
      identifier = { name = "quickcheck-relaxng"; version = "0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Audrey Tang 2014 (CC0)";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "http://github.com/audreyt/quickcheck-relaxng/";
      url = "";
      synopsis = "Generate RelaxNG-constrained XML documents for QuickCheck";
      description = "Generate RelaxNG-constrained XML documents for QuickCheck";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-regex" or (errorHandler.buildDepError "quickcheck-regex"))
          (hsPkgs."hxt-relaxng" or (errorHandler.buildDepError "hxt-relaxng"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
        buildable = true;
        };
      };
    }