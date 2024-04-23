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
      identifier = { name = "e11y"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2024 Shea Levy\n\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n    http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License.";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/shlevy/e11y";
      url = "";
      synopsis = "An event-oriented observability library";
      description = "Instrument your Haskell codebase with [wide, semantically meaningful events](https://charity.wtf/2022/08/15/live-your-best-life-with-structured-events/).\n\nThis library is designed with separating the following concerns in mind:\n\n[@Writing instrumentation@] When instrumenting code, I want to think in terms of my\napplication domain and report any information I might need in order to infer internal\napplication-level state and understand the behavior of my program/library.\n\n[@Consuming instrumentation@] When consuming instrumentation, I want to think in\nterms of the API of the specific backend I'm supporting (writing to @stderr@,\nserving a @Prometheus@ page, posting to @OpenTelemetry@) and what is needed to\nrender to that API.\n\n[@Initializing instrumentation in an application@] When I'm ready to tie it all\ntogether, I want to identify the specific backends I want to post to and provide\nthe bridge code to render the domain-specific instrumentation as needed for those\nbackends. I also want to handle concerns like sampling or client-side aggregation\nof domain-specific instrumentation to keep usage manageable.\n\nSee \"Observe.Event\" for detailed documentation on instrumenting your code.\n\nSee \"Observe.Event.Backend\" for creating a new @EventBackend@ to consume instrumentation.\n\nSee \"Observe.Event.Backend.Data\" for an @EventBackend@ that represents the stream of events as\nordinary Haskell data.\n\nSee [e11y-otel](https://hackage.haskell.org/package/e11y-otel) for an OpenTelemetry-based\nbackend.\n\nThis is a rewrite of [eventuo11y](https://hackage.haskell.org/package/eventuo11y), designed\nto be easier to use, less intrusive, and not nearly as annoying to write/say. The name\nis a shortening of \"event-based observability\" (event-based -> e, observability -> o11y), and\ncan be pronounced \"eh-lee\" or \"ee-eleven-why\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."general-allocate" or (errorHandler.buildDepError "general-allocate"))
          (hsPkgs."parametric-functor" or (errorHandler.buildDepError "parametric-functor"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "e11y" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."e11y" or (errorHandler.buildDepError "e11y"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."general-allocate" or (errorHandler.buildDepError "general-allocate"))
            (hsPkgs."strict-identity" or (errorHandler.buildDepError "strict-identity"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }