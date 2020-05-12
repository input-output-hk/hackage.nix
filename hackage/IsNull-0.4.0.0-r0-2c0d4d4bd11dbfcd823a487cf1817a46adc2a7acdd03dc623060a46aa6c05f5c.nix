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
      specVersion = "1.16";
      identifier = { name = "IsNull"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jmacristovao@gmail.com";
      author = "João Cristóvão <jmacristovao@gmail.com>\n, Ivan Miljenovic <Ivan.Miljenovic@gmail.com>";
      homepage = "https://github.com/jcristovao/IsNull";
      url = "";
      synopsis = "A typeclass to determine if a given value is null.";
      description = "A typeclass to determine if a given foldable type\n(or other) is empty ~ null ~ invalid.\nThe definition is intentionally vague, to cover types\nfrom Either to Text and Sets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.7") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.7") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"));
          buildable = true;
          };
        };
      };
    }