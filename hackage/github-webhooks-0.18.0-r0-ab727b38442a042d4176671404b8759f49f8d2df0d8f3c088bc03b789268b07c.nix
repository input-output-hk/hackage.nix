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
    flags = { ci = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "github-webhooks"; version = "0.18.0"; };
      license = "MIT";
      copyright = "(c) 2017-2025 CUEDO CONTROLS P/L";
      maintainer = "Kyle Van Berendonck <foss@cuedo.com.au>";
      author = "Kyle Van Berendonck <kyle.vanberendonck@cuedo.com.au>,\nChristian Sakai <christianmsakai@gmail.com>,\nThomas DuBuisson <thomas.dubuisson@gmail.com>,\nRob Berry,\nDomen Kozar <domen@dev.si>,\nAlistair Burrowes,\nMatthew Bauer,\nJulien Debon,\nRobert Hensing,\nJean-François Roche";
      homepage = "https://github.com/cuedo/github-webhooks#readme";
      url = "";
      synopsis = "Aeson instances for GitHub webhook payloads.";
      description = "Complete instances for decoding GitHub Webhook payloads (using @aeson@). See the README at <https://github.com/cuedo/github-webhooks#readme> for examples. Sponsored by <https://cuedo.com.au>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."github-webhooks" or (errorHandler.buildDepError "github-webhooks"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }