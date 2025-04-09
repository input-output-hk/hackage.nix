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
      identifier = { name = "yaml-unscrambler"; version = "0.1.0.20"; };
      license = "MIT";
      copyright = "(c) 2020 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/yaml-unscrambler";
      url = "";
      synopsis = "Flexible declarative YAML parsing toolkit";
      description = "Very flexible declarative YAML parsing toolkit with extensive error detalization capabilities and expected schema generation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acc" or (errorHandler.buildDepError "acc"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
          (hsPkgs."attoparsec-time" or (errorHandler.buildDepError "attoparsec-time"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."libyaml" or (errorHandler.buildDepError "libyaml"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."yaml-unscrambler" or (errorHandler.buildDepError "yaml-unscrambler"))
          ];
          buildable = true;
        };
      };
    };
  }