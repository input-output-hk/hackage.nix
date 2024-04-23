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
      specVersion = "2.4";
      identifier = { name = "dhall-text-shell"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2021 Justin Le";
      maintainer = "Justin Le <justin@jle.im>";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/dhall-text-shell";
      url = "";
      synopsis = "Render dhall text with shell commands as function arguments";
      description = "`dhall text` and `dhall to-directory-tree` require the expression (or file\nleaves) to be `Text`.  But what if it was able to also render expressions\nof type `(Text -> Text) -> Text` (or `(Text -> Text) -> directory tree`),\nand be given a shell argument as the `Text -> Text` ?\n\nThis is essentially a very minimal \"FFI\" for dhall, since it doesn't require\nextending anything in the language.  It just requires you to parameterize your\nprogram on that ffi function.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "dhall-text-shell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."dhall-text-shell" or (errorHandler.buildDepError "dhall-text-shell"))
          ];
          buildable = true;
        };
      };
    };
  }