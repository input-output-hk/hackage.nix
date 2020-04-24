{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "versioning-servant"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "(c) 2018 Lorenzo Tabacchini";
      maintainer = "lortabac@gmx.com";
      author = "Lorenzo Tabacchini";
      homepage = "https://github.com/lortabac/versioning";
      url = "";
      synopsis = "Servant combinators for the versioning library.";
      description = "This package provides Servant combinators to be used with\nthe 'versioning' library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."versioning" or ((hsPkgs.pkgs-errors).buildDepError "versioning"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-wai" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."versioning" or ((hsPkgs.pkgs-errors).buildDepError "versioning"))
            (hsPkgs."versioning-servant" or ((hsPkgs.pkgs-errors).buildDepError "versioning-servant"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            ];
          buildable = true;
          };
        };
      };
    }