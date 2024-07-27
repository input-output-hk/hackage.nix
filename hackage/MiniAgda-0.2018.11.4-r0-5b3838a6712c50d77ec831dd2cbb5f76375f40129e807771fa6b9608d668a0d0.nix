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
      specVersion = "1.24";
      identifier = { name = "MiniAgda"; version = "0.2018.11.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@cse.gu.se>";
      author = "Andreas Abel and Karl Mehltretter";
      homepage = "http://www.cse.chalmers.se/~abela/miniagda/";
      url = "";
      synopsis = "A toy dependently typed programming language with type-based termination.";
      description = "MiniAgda is a tiny dependently-typed programming language in the style\nof Agda. It serves as a laboratory to test potential additions to the\nlanguage and type system of Agda. MiniAgda's termination checker is a\nfusion of sized types and size-change termination and supports\ncoinduction. Equality incorporates eta-expansion at record and\nsingleton types. Function arguments can be declared as static; such\narguments are discarded during equality checking and compilation.\nRecent features include bounded size quantification and destructor\npatterns for a more general handling of coinduction.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "miniagda" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
            (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
          buildable = true;
        };
      };
    };
  }