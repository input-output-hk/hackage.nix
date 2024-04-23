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
      specVersion = "1.6";
      identifier = { name = "Network-NineP"; version = "0.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Sergey Alirzaev <zl29ah@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "High-level abstraction over 9P protocol";
      description = "A library providing one with a somewhat higher level interface to 9P2000 protocol than existing implementations. Designed to facilitate rapid development of synthetic filesystems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."NineP" or (errorHandler.buildDepError "NineP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."mstate" or (errorHandler.buildDepError "mstate"))
        ];
        buildable = true;
      };
      exes = { "test" = { buildable = true; }; };
    };
  }