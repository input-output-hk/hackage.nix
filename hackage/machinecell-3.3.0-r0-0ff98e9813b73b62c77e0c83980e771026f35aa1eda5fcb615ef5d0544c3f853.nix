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
    flags = { arrow-tr = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "machinecell"; version = "3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Hidenori Azuma";
      maintainer = "Hidenori Azuma <as.capabl@gmail.com>";
      author = "Hidenori Azuma";
      homepage = "http://github.com/as-capabl/machinecell";
      url = "";
      synopsis = "Arrow based stream transducers";
      description = "Stream processing library similar to pipes, couduit, or machines.\n\nArrow combinatins are supported and can be used with the arrow notation.\nAFRP-like utilities are also available.\n\nA quick introduction is available in the Control.Arrow.Machine documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.arrow-tr) (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"));
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."machinecell" or (errorHandler.buildDepError "machinecell"))
            ];
          buildable = true;
          };
        };
      };
    }