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
      specVersion = "1.12";
      identifier = { name = "snumber"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2020-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-dependent-literals#readme";
      url = "";
      synopsis = "Indexed numeric types linking type-level and value-level numbers.";
      description = "This provides singletons-style witnesses for type-level integers, and some\nlimited arithmetic operations on them.  Instead of working with (invisible,\nimplicitly-passed) 'KnownNat' instances, you can work with (visible,\nexplicitly-mentioned) 'SNumber' values, and can freely convert between the\ntwo forms.\n\nThis primarily exists in support of\n<https://hackage.haskell.org/package/dependent-literals-plugin dependent-literals-plugin>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
          ];
        buildable = true;
        };
      };
    }