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
      identifier = { name = "short-vec-lens"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpritchard@gmail.com>";
      author = "Lennart Augustsson <lennart@augustsson.net>, Wren Romano <wrengr@google.com>, Andrew Pritchard <awpritchard@gmail.com>";
      homepage = "https://github.com/awpr/fin-vec#readme";
      url = "";
      synopsis = "Lenses and related functionality for the `short-vec` package.";
      description = "This provides various 'Lens'es, 'Iso's, etc. for 'Vec's, including slicing,\nreshaping, transposition, concatenation, and more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
          (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
          ];
        buildable = true;
        };
      };
    }