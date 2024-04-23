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
      identifier = { name = "parametric-functor"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2024 Shea Levy\n\nLicensed under the Apache License, Version 2.0 (the \"License\");\nyou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\n    http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software\ndistributed under the License is distributed on an \"AS IS\" BASIS,\nWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\nSee the License for the specific language governing permissions and\nlimitations under the License.";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/shlevy/parametric-functor";
      url = "";
      synopsis = "A known-parametric Functor typeclass";
      description = "As Oleg Grenrus [argued](http://oleg.fi/gists/posts/2019-07-31-fmap-coerce-coerce.html) in 2019,\n'Functor's should be parametric, and in particular should:\n\n  - Satisfy @fmap coerce@ = @coerce@\n  - Have a @∀ a b. Coercible a b ⇒ Coercible (f a) (f b)@ super-constraint\n\nUntil this change gets adopted in @base@, this package can be used for a variant of 'Functor'\nwhich satisfies these requirements.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }