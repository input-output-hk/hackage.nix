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
    flags = { enable-inspect = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-random"; version = "1.4.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "http://github.com/lysxia/generic-random";
      url = "";
      synopsis = "Generic random generators for QuickCheck";
      description = "Derive instances of @Arbitrary@ for QuickCheck,\nwith various options to customize implementations.\n\nFor more information\n\n- See the README\n\n- \"Generic.Random.Tutorial\"\n\n- http://blog.poisson.chat/posts/2018-01-05-generic-random-tour.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            ];
          buildable = true;
          };
        "coherence" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            ];
          buildable = true;
          };
        "inspect" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            ] ++ (pkgs.lib).optional (!(!flags.enable-inspect)) (hsPkgs."random" or (errorHandler.buildDepError "random"));
          buildable = if !flags.enable-inspect then false else true;
          };
        };
      };
    }