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
      specVersion = "1.8";
      identifier = { name = "opencog-atomspace"; version = "0.1.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "-";
      author = "Marcos Pividori";
      homepage = "github.com/opencog/atomspace/tree/master/opencog/haskell";
      url = "";
      synopsis = "Haskell Bindings for the AtomSpace.";
      description = "This library defines Haskell Bindings for the AtomSpace.\n\nFor more information on Haskell Bindings:\n<http://wiki.opencog.org/w/Haskell>\n\nGitHub repository:\n<https://github.com/opencog/atomspace/tree/master/opencog/haskell>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        libs = [
          (pkgs."atomspace-cwrapper" or (errorHandler.sysDepError "atomspace-cwrapper"))
          ];
        buildable = true;
        };
      };
    }