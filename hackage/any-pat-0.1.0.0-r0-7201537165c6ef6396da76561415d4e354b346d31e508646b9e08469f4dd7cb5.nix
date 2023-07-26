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
      identifier = { name = "any-pat"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 HaPyTeΧ";
      maintainer = "hapytexeu+gh@gmail.com";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/any-pat#readme";
      url = "";
      synopsis = "Quasiquoters that act on a sequence of patterns and compiles these view into patterns and expressions.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          ];
        buildable = true;
        };
      };
    }