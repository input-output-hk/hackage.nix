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
      specVersion = "0";
      identifier = { name = "typeof"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@cse.unsw.edu.au>";
      author = "Don Stewart ";
      homepage = "";
      url = "";
      synopsis = "Small script for inferring types";
      description = "A script to infer and insert type declarations\nin Haskell source, callable from your editor.\nBindings exist to emacs and vim.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "typeof" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }