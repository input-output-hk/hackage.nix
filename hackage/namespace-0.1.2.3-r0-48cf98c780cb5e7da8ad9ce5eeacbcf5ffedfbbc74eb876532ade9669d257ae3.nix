{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "namespace"; version = "0.1.2.3"; };
      license = "BSD-3-Clause";
      copyright = "2016 Hao Xu";
      maintainer = "xuh@email.unc.edu";
      author = "Hao Xu";
      homepage = "https://github.com/xu-hao/namespace";
      url = "";
      synopsis = "A Generic Haskell library for managing namespaces";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monoid-extras" or ((hsPkgs.pkgs-errors).buildDepError "monoid-extras"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "namespace-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."namespace" or ((hsPkgs.pkgs-errors).buildDepError "namespace"))
            ];
          buildable = true;
          };
        };
      };
    }