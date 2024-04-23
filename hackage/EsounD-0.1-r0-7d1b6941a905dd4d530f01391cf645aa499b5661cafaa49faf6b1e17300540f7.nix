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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "EsounD"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/EsounD.html";
      url = "";
      synopsis = "Type-safe bindings to EsounD (ESD; Enlightened Sound Daemon)";
      description = "Type-safe bindings to EsounD: <http://www.tux.org/~ricdude/EsounD.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."bindings-EsounD" or (errorHandler.buildDepError "bindings-EsounD"))
          (hsPkgs."monad-peel" or (errorHandler.buildDepError "monad-peel"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."regions" or (errorHandler.buildDepError "regions"))
          (hsPkgs."safer-file-handles" or (errorHandler.buildDepError "safer-file-handles"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "hs-esd-player-example" = {
          buildable = if flags.build-examples then true else false;
        };
      };
    };
  }