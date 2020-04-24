{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conduit-iconv"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "slomo@coaxion.net";
      author = "Sebastian Dröge";
      homepage = "https://github.com/sdroege/conduit-iconv";
      url = "";
      synopsis = "Conduit for character encoding conversion.";
      description = "@conduit-iconv@ provides a Conduit for character encoding\nconversion, based on the iconv library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (system.isOsx || system.isFreebsd) (pkgs."iconv" or ((hsPkgs.pkgs-errors).sysDepError "iconv"));
        buildable = true;
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-iconv" or ((hsPkgs.pkgs-errors).buildDepError "conduit-iconv"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."conduit-iconv" or ((hsPkgs.pkgs-errors).buildDepError "conduit-iconv"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }