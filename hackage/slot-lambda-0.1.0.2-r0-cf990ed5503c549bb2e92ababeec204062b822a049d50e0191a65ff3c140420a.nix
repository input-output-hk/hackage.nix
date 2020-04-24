{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "slot-lambda"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "ducis_cn@126.com";
      author = "ducis";
      homepage = "https://github.com/ducis/pa_slot";
      url = "";
      synopsis = "Write lambdas without naming the parameters.";
      description = "Write lambdas without naming the parameters. Example:\n\n@\n[s| ı : ı : _ı : ı : _ı : _ı : _0 : [] |] \\'a\\' \\'b\\' \\'c\\'\n=  (\\\\x y z -> x:y:y:z:z:z:x:[]) \\'a\\' \\'b\\' \\'c\\'\n=  \\\"abbccca\\\"\n@\n\nThe unicode character @ı@(305) representing a \\'slot\\' can be input in vim with the digraph \\'i.\\'\n\nJust @import Syntax.Slot@ and use either @[s| ... |]@ or @[slot| ... |]@, which are the same thing given two names just for convenience.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }