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
      identifier = { name = "strelka"; version = "2.0.2.1"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/strelka";
      url = "";
      synopsis = "A simple, flexible and composable web-router";
      description = "An HTTP server can be defined as a request parser, which produces a response,\nwhile managing the application state.\nAs simple as that.\nThis library exploits that fact to produce a very simple and flexible API,\nwhich can be executed on top of any specific HTTP-server implementation (e.g., Warp).\n\n[Library Structure]\nThe API is split into a set of DSLs targeted at solving specific problems in isolation,\nthus facilitating a proper separation of concerns.\n\n[Server Bindings]\nCurrently only a binding to WAI and Warp is known:\n<http://hackage.haskell.org/package/strelka-wai>.\n\n[Demo]\nFor a thorough demonstration of the library and suggested usage patterns\ncheck out the following project:\n<https://github.com/nikita-volkov/strelka-demo>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."strelka-core" or (errorHandler.buildDepError "strelka-core"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."url-decoders" or (errorHandler.buildDepError "url-decoders"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."bytestring-tree-builder" or (errorHandler.buildDepError "bytestring-tree-builder"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }