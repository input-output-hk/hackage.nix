{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "binary-conduit"; version = "1.1.0"; };
      license = "MIT";
      copyright = "2013 Alexander Vershilov";
      maintainer = "alexander.vershilov@gmail.com";
      author = "Alexander Vershilov";
      homepage = "http://github.com/qnikst/binary-conduit";
      url = "";
      synopsis = "data serialization/deserialization conduit library";
      description = "The binary-conduit package.\nAllow binary serialization using iterative conduit interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "test-binary-conduit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-assertions" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-assertions"))
            (hsPkgs."binary-conduit" or ((hsPkgs.pkgs-errors).buildDepError "binary-conduit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }