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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cassava-embed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "makeit@typeable.io";
      author = "Typeable.io contributors";
      homepage = "https://github.com/typeable/cassava-embed#readme";
      url = "";
      synopsis = "CSV-file embedding library";
      description = "@cassava-embed@ helps to embed CSV-file using TemplateHaskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ pkgs.lib.optionals (flags.build-examples) (if compiler.isGhc && compiler.version.lt "8.0.1"
            then [
              (hsPkgs."cassava-embed" or (errorHandler.buildDepError "cassava-embed"))
              (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            ]
            else [
              (hsPkgs."cassava-embed" or (errorHandler.buildDepError "cassava-embed"))
            ]);
          buildable = if flags.build-examples then true else false;
        };
      };
    };
  }