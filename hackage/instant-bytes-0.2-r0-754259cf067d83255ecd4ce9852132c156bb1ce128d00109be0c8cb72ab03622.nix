{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "instant-bytes"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015";
      maintainer = "renzo@carbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/instant-bytes";
      url = "";
      synopsis = "Generic Serial instances through instant-generics";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."instant-generics" or ((hsPkgs.pkgs-errors).buildDepError "instant-generics"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."instant-bytes" or ((hsPkgs.pkgs-errors).buildDepError "instant-bytes"))
            (hsPkgs."instant-generics" or ((hsPkgs.pkgs-errors).buildDepError "instant-generics"))
            ];
          buildable = true;
          };
        };
      };
    }