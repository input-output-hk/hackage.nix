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
      identifier = { name = "opaleye-classy"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ben.kolera@gmail.com";
      author = "Ben Kolera";
      homepage = "https://github.com/benkolera/opaleye-classy/tree/master";
      url = "";
      synopsis = "Opaleye wrapped up in classy MTL attire.";
      description = "Classy MTL extension of the lovely Opaleye library, which simply just wraps things up in a MonadReader , MonadError context where the config & error are constrained by Classy Lenses & Prisms rather than by concrete types\n\nMore info on this pattern can be found in George Wilson's BFPG talk\n:\n<http://talks.bfpg.org/talks/2015-06-09.next_level_mtl.html>\n\nNote: This API may not be complete. If you need other functions exported then let me know or drop in a PR.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."product-profunctors" or (errorHandler.buildDepError "product-profunctors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
        ];
        buildable = true;
      };
    };
  }