{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hszephyr"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nelson Elhage <nelhage@nelhage.com>";
      author = "Nelson Elhage <nelhage@nelhage.com>";
      homepage = "";
      url = "";
      synopsis = "Simple libzephyr bindings";
      description = "Network.Zephyr provides haskell bindings to MIT's \"Zephyr\" instant\nmessaging / notification service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        libs = [
          (pkgs."zephyr" or ((hsPkgs.pkgs-errors).sysDepError "zephyr"))
          (pkgs."com_err" or ((hsPkgs.pkgs-errors).sysDepError "com_err"))
          ];
        buildable = true;
        };
      };
    }