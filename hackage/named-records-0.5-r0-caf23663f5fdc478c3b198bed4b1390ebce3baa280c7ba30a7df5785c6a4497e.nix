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
      identifier = { name = "named-records"; version = "0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Flexible records with named fields.";
      description = "Flexible records with named fields.\n\n[@v0.1@] Initial (not published on cabal).\n\n[@v0.2@] @record@ allows for default values now.\n\n[@v0.2.1@] Requires @names-0.2.1@ now.\n\n[@v0.2.2@] TH @record@ definitions allow for\nmore types to be used in the definition.\n\n[@v0.2.3@] Cabal package tidied up and basic\ndocumentation added (also fixed a bug regarding\ndefinition of default values).\n\n[@v0.3@] Records can now extend other records.\n\n[@v0.3.1@] Added sample files to cabal package,\nrequirements bumped for names-v0.3\n\n[@v0.3.2@] Added @new@.\n\n[@v0.3.3@] Pushed requirements for @names-0.3.1@.\nUpdated documentation and samples.\n\n[@v0.4@] Records can now be serialized by means of\nthe @binary@ package. Added @upd@ function.\n\n[@v0.5@] Added @record'@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."names" or (errorHandler.buildDepError "names"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }