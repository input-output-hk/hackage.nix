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
    flags = { tfp = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "fixed-length"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/fixed-length/";
      url = "";
      synopsis = "Lists with statically known length based on non-empty package.";
      description = "This packages defines a list data type with statically known length\nby nesting the NonEmpty and Empty data structure from the non-empty package.\nWe provide a closed world class for this class of structures\n<http://www.haskell.org/haskellwiki/Closed_world_instances>\nand a wrapper that makes all these lists @Traversable@\nand @Applicative@ with ZipList semantics.\n\nSimilar packages:\n\n* @fixed-list@:\nDefines an open world class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.tfp) (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"));
        buildable = true;
      };
    };
  }