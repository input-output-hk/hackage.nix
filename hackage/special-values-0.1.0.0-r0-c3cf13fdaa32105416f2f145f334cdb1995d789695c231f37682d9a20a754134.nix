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
      identifier = { name = "special-values"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/special-values#readme";
      url = "";
      synopsis = "Typeclass providing special values";
      description = "Special values are provided by a SpecialValues typeclass. Those can be used for example by QuickCheck, see quickcheck-special.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
        buildable = true;
        };
      };
    }