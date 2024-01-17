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
      identifier = { name = "e11y-otel"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2024 Shea Levy\n\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n    http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License.";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/shlevy/e11y";
      url = "";
      synopsis = "OpenTelemetry-based rendering for e11y";
      description = "Render [e11y](https://hackage.haskell.org/package/e11y) events to OpenTelemetry traces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."e11y" or (errorHandler.buildDepError "e11y"))
          (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
          (hsPkgs."parametric-functor" or (errorHandler.buildDepError "parametric-functor"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "e11y-otel" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."e11y" or (errorHandler.buildDepError "e11y"))
            (hsPkgs."e11y-otel" or (errorHandler.buildDepError "e11y-otel"))
            (hsPkgs."general-allocate" or (errorHandler.buildDepError "general-allocate"))
            (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
            (hsPkgs."hs-opentelemetry-sdk" or (errorHandler.buildDepError "hs-opentelemetry-sdk"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }