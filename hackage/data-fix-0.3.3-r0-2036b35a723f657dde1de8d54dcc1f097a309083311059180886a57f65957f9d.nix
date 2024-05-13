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
      identifier = { name = "data-fix"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov, Edward Kmett, Oleg Grenrus";
      homepage = "https://github.com/spell-music/data-fix";
      url = "";
      synopsis = "Fixpoint data types";
      description = "Fixpoint types and recursion schemes. If you define your AST as\nfixpoint type, you get fold and unfold operations for free.\n\nThanks for contribution to: Matej Kollar, Herbert Valerio Riedel";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
    };
  }