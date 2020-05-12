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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "typeof"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart, Kangyuan Niu";
      author = "Don Stewart ";
      homepage = "";
      url = "";
      synopsis = "Small script for inferring types";
      description = "A script to infer and insert type declarations\nin Haskell source, callable from your editor.\nBindings exist to emacs and vim.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "typeof" = {
          depends = if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }