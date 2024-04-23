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
      identifier = { name = "icfpc2020-galaxy"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2020 mniip, 2020 ICFPC organizers";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "";
      url = "";
      synopsis = "A strange message received at the Pegovka observatory";
      description = "A strange message received at the Pegovka observatory. For more info read https://icfpcontest2020.github.io/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }