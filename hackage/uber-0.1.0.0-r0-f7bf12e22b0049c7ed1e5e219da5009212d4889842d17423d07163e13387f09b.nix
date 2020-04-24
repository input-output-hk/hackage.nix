{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "uber"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tarun <tj.joshi7@gmail.com>";
      author = "Tarun";
      homepage = "https://github.com/byteally/webapi-uber.git";
      url = "";
      synopsis = "Uber client for Haskell";
      description = "Bindings for Uber API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."webapi" or ((hsPkgs.pkgs-errors).buildDepError "webapi"))
          ];
        buildable = true;
        };
      tests = {
        "uber-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."uber" or ((hsPkgs.pkgs-errors).buildDepError "uber"))
            ];
          buildable = true;
          };
        };
      };
    }