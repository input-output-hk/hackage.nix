{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xgboost-haskell"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Tao He";
      maintainer = "sighingnow@gmail.com";
      author = "Tao He";
      homepage = "https://github.com/sighingnow/xgboost-haskell#readme";
      url = "";
      synopsis = "XGBoost library for Haskell.";
      description = "XGBoost library for Haskell via FFI binding, on top of foundation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
          ];
        buildable = true;
        };
      exes = {
        "xgboost-app" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
            (hsPkgs."xgboost-haskell" or ((hsPkgs.pkgs-errors).buildDepError "xgboost-haskell"))
            ];
          libs = [
            (pkgs."xgboost" or ((hsPkgs.pkgs-errors).sysDepError "xgboost"))
            ];
          buildable = false;
          };
        "xgb-agaricus" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
            (hsPkgs."xgboost-haskell" or ((hsPkgs.pkgs-errors).buildDepError "xgboost-haskell"))
            ];
          libs = [
            (pkgs."xgboost" or ((hsPkgs.pkgs-errors).sysDepError "xgboost"))
            ];
          buildable = true;
          };
        };
      };
    }