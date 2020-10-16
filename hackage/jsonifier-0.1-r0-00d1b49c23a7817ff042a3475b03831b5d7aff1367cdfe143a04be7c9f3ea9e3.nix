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
      identifier = { name = "jsonifier"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2020 Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/jsonifier";
      url = "";
      synopsis = "Fast and simple JSON encoding toolkit";
      description = "Minimalistic library for encoding JSON directly to strict bytestring.\n\nThe library focuses on 2 aspects: simplicity and performance.\nThe API consists of just a few functions and\nachieves performance that is 3 times better than that of \\\"aeson\\\"\nin typical use-cases.\nIn cases where we deal with really large documents (60MB) the performance\nof \\\"aeson\\\" becomes more comparable.\n\nFor further details please refer to README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs."jsonifier" or (errorHandler.buildDepError "jsonifier"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."jsonifier" or (errorHandler.buildDepError "jsonifier"))
            (hsPkgs."numeric-limits" or (errorHandler.buildDepError "numeric-limits"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."jsonifier" or (errorHandler.buildDepError "jsonifier"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
            ];
          buildable = true;
          };
        };
      };
    }