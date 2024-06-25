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
      specVersion = "1.18";
      identifier = { name = "conduit-aeson"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2021-2022 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/conduit-aeson";
      url = "";
      synopsis = "Short description";
      description = "Please see the README on GitHub at <https://github.com/lehins/conduit-aeson#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.2") (hsPkgs."attoparsec-aeson" or (errorHandler.buildDepError "attoparsec-aeson"));
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.2") [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-aeson" or (errorHandler.buildDepError "conduit-aeson"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."conduit-aeson" or (errorHandler.buildDepError "conduit-aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }