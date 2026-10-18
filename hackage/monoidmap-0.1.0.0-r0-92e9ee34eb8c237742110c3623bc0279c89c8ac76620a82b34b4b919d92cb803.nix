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
      specVersion = "3.0";
      identifier = { name = "monoidmap"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2022–2026 Jonathan Knowles";
      maintainer = "mail@jonathanknowles.net";
      author = "Jonathan Knowles";
      homepage = "https://github.com/jonathanknowles/monoidmap";
      url = "";
      synopsis = "Monoidal map type";
      description = "Monoidal map type with support for semigroup and monoid subclasses.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."monoidmap-internal" or (errorHandler.buildDepError "monoidmap-internal"))
          (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
        ];
        buildable = true;
      };
      tests = {
        "monoidmap-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monoidmap" or (errorHandler.buildDepError "monoidmap"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }