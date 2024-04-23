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
      identifier = { name = "gltf-loader"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2022 Sean Gillespie";
      maintainer = "sean@mistersg.net";
      author = "Sean D Gillespie";
      homepage = "https://github.com/sgillespiep/haskell-gltf-loader#readme";
      url = "";
      synopsis = "High level GlTF loader";
      description = "Please see the README on Github at <https://github.com/sgillespie/haskell-gltf-loader#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."gltf-codec" or (errorHandler.buildDepError "gltf-codec"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "gltf-loader-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gltf-loader" or (errorHandler.buildDepError "gltf-loader"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          ];
          buildable = true;
        };
      };
      tests = {
        "gltf-loader-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gltf-codec" or (errorHandler.buildDepError "gltf-codec"))
            (hsPkgs."gltf-loader" or (errorHandler.buildDepError "gltf-loader"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
      };
    };
  }