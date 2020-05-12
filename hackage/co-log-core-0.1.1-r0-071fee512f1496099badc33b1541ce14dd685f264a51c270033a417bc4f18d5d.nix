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
      specVersion = "2.0";
      identifier = { name = "co-log-core"; version = "0.1.1"; };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/co-log";
      url = "";
      synopsis = "Composable Contravariant Comonadic Logging Library";
      description = "This package provides core types and functions to work with the @LogAction@ data type which is both simple and powerful.\n\n@\n__newtype__ LogAction m msg = LogAction\n\\    { unLogAction :: msg -> m ()\n\\    }\n@\n\nThe ideas behind this package are described in the following blog post:\n\n* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }