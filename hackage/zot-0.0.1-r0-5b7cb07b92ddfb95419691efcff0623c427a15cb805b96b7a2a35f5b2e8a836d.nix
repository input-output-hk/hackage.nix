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
      specVersion = "1.6";
      identifier = { name = "zot"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "Zot language";
      description = "Zot language\n\n> echo \"10100\" | cat examples/reverse.zot - | zot -\n> 00101\n\n> cat examples/reverse.lambda | zot lambdaToSki | zot skiToZot | zot arg \"10100\" | zot -\n> 00101\n\nAnd try\n\n> cat examples/reverse.zot | zot zotToSki | zot skiToLambda 3\n\nand\n\n> cat examples/reverse.zot | zot zotToSki | zot skiToLambda 3 -h";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            ];
          buildable = true;
          };
        };
      };
    }