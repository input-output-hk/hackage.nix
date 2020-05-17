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
      identifier = { name = "github-webhooks"; version = "0.14.0"; };
      license = "MIT";
      copyright = "(c) 2017-2020 ONROCK";
      maintainer = "Kyle Van Berendonck <foss@onrock.online>";
      author = "Kyle Van Berendonck <kyle.vanberendonck@onrock.online>,\nChristian Sakai <christianmsakai@gmail.com>,\nThomas DuBuisson <thomas.dubuisson@gmail.com>,\nRob Berry,\nDomen Kozar <domen@dev.si>,\nAlistair Burrowes,\nMatthew Bauer";
      homepage = "https://github.com/onrock-eng/github-webhooks#readme";
      url = "";
      synopsis = "Aeson instances for GitHub Webhook payloads.";
      description = "Complete instances for decoding GitHub Webhook payloads (using @aeson@). See the README at <https://github.com/onrock-eng/github-webhooks#readme> for examples.";
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