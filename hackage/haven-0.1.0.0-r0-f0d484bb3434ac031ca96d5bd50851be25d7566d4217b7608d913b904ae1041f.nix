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
      identifier = { name = "haven"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maintenance@obsidian.systems";
      author = "Ali Abrar, Will Fancher";
      homepage = "";
      url = "";
      synopsis = "Recursively retrieve maven dependencies";
      description = "A haskell project that retrieves maven package dependencies recursively given a starting set of packages. The primary output format is a list of nix sets describing the maven packages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haven" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
          buildable = true;
        };
      };
    };
  }