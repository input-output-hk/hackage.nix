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
    flags = { transformers = false; extensibleexceptionsinbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "control-monad-failure"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra, Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/pepeiborra/control-monad-failure";
      url = "";
      synopsis = "A class for monads which can fail with an error.";
      description = "A class for monads which can fail with an error.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (if flags.transformers
          then [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]
          else [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ])) ++ (if flags.extensibleexceptionsinbase
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            ]);
        buildable = true;
        };
      };
    }