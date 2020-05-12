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
      identifier = { name = "yeamer"; version = "0.1.0.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag \$ hvl.no";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/yeamer";
      url = "";
      synopsis = "Yesod-based server for interactive presentation slides";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          (hsPkgs."js-jquery" or (errorHandler.buildDepError "js-jquery"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."numbered-semigroups" or (errorHandler.buildDepError "numbered-semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."TeX-my-math" or (errorHandler.buildDepError "TeX-my-math"))
          (hsPkgs."dumb-cas" or (errorHandler.buildDepError "dumb-cas"))
          (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
          (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."these-lens" or (errorHandler.buildDepError "these-lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."flat" or (errorHandler.buildDepError "flat"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (if system.isWindows
          then [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
          else [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]);
        buildable = true;
        };
      exes = {
        "test-presentation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yeamer" or (errorHandler.buildDepError "yeamer"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."TeX-my-math" or (errorHandler.buildDepError "TeX-my-math"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."numbered-semigroups" or (errorHandler.buildDepError "numbered-semigroups"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."flat" or (errorHandler.buildDepError "flat"))
            ];
          buildable = true;
          };
        "yeamer-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yeamer" or (errorHandler.buildDepError "yeamer"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."TeX-my-math" or (errorHandler.buildDepError "TeX-my-math"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."numbered-semigroups" or (errorHandler.buildDepError "numbered-semigroups"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."yeamer" or (errorHandler.buildDepError "yeamer"))
            (hsPkgs."numbered-semigroups" or (errorHandler.buildDepError "numbered-semigroups"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }