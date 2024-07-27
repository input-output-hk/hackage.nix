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
      specVersion = "2.4";
      identifier = { name = "typesafe-precure"; version = "0.8.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2021 YAMAMOTO Yuji";
      maintainer = "igrep@n.email.ne.jp";
      author = "YAMAMOTO Yuji";
      homepage = "https://github.com/igrep/typesafe-precure#readme";
      url = "";
      synopsis = "Type-safe transformations and purifications of PreCures (Japanese Battle Heroine)";
      description = "See README.md for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."autoexporter" or (errorHandler.buildDepError "autoexporter"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-skeleton" or (errorHandler.buildDepError "monad-skeleton"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-data-compat" or (errorHandler.buildDepError "th-data-compat"))
          (hsPkgs."th-strict-compat" or (errorHandler.buildDepError "th-strict-compat"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.autoexporter.components.exes.autoexporter or (pkgs.pkgsBuildBuild.autoexporter or (errorHandler.buildToolDepError "autoexporter:autoexporter")))
        ];
        buildable = true;
      };
      tests = {
        "typesafe-precure-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typesafe-precure" or (errorHandler.buildDepError "typesafe-precure"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }