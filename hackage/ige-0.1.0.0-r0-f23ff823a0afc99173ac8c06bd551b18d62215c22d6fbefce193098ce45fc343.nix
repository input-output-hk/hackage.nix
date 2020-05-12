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
      identifier = { name = "ige"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "owen@olynch.me";
      author = "Owen Lynch";
      homepage = "https://github.com/olynch/ige";
      url = "";
      synopsis = "An keyboard-driven interactive graph editor";
      description = "`IGE` attempts to build a reusable library for implementing graph editors. The intent is to allow a new class of programming languages that have non-linear structure. See `glance` (an alternative syntax for haskell) for one example of such a structure. Other applications include circuit design, commutative diagram drawing, server configuration. Currently a very early alpha.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ige" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
            (hsPkgs."stm-conduit" or (errorHandler.buildDepError "stm-conduit"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }