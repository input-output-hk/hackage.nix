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
      specVersion = "1.8";
      identifier = { name = "pretty-show-ansi-wl"; version = "1.9.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@liamoc.net";
      author = "Iavor S. Diatchki, Liam O'Connor";
      homepage = "https://github.com/liamoc/pretty-show-ansi-wl";
      url = "";
      synopsis = "Like pretty-show, but only for ansi-wl-pprint";
      description = "This is an adapted version of Iavor S. Diatchki's pretty-show package,\nbut using ansi-wl-pprint as the underlying pretty-printing library,\nand without certain extra features like HTML rendering.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-lexer" or (errorHandler.buildDepError "haskell-lexer"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
        buildable = true;
        };
      };
    }