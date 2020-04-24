{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fixed-vector-cborg"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Binary instances for fixed-vector";
      description = "CBOR serialization instances for fixed-vector's types. Generic\nserialization functions are proviede as well";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fixed-vector" or ((hsPkgs.pkgs-errors).buildDepError "fixed-vector"))
          (hsPkgs."cborg" or ((hsPkgs.pkgs-errors).buildDepError "cborg"))
          (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fixed-vector" or ((hsPkgs.pkgs-errors).buildDepError "fixed-vector"))
            (hsPkgs."fixed-vector-cborg" or ((hsPkgs.pkgs-errors).buildDepError "fixed-vector-cborg"))
            (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }