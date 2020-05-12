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
      specVersion = "1.12";
      identifier = { name = "i3blocks-hs-contrib"; version = "2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Christian Panadero <panavtec@gmail.com>,\nCarlos Morera <carlosdelachica@gmail.com>";
      author = "Christian Panadero <panavtec@gmail.com>,\nCarlos Morera <carlosdelachica@gmail.com>";
      homepage = "https://github.com/panavtec/i3blocks-hs-contrib#readme";
      url = "";
      synopsis = "Base i3blocks written in haskell";
      description = "@i3blocks-hs-contrib@ defines a set of blocks for your i3 bar";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          ];
        buildable = true;
        };
      exes = {
        "AirplaneMode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Bandwidth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Battery" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Bitcoin" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Cpu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "DateTime" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Docker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Ip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Memory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "OpenVpn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Temperature" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Volume" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        "Wifi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ];
          buildable = true;
          };
        };
      };
    }