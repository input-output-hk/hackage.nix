{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "ejdb2-binding"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Francesco Burelli";
      maintainer = "francesco.burelli@protonmail.com";
      author = "Francesco Burelli";
      homepage = "https://github.com/cescobaz/ejdb2haskell#readme";
      url = "";
      synopsis = "Binding to EJDB2 C library, an embedded JSON noSQL database";
      description = "Binding to EJDB2 C library, an embedded JSON noSQL database. Package requires libejdb2 to build. Please see the README on GitHub at <https://github.com/cescobaz/ejdb2haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        libs = [ (pkgs."ejdb2" or ((hsPkgs.pkgs-errors).sysDepError "ejdb2")) ];
        pkgconfig = [
          (pkgconfPkgs."libejdb2" or ((hsPkgs.pkgs-errors).pkgConfDepError "libejdb2"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "ejdb2haskell-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ejdb2-binding" or ((hsPkgs.pkgs-errors).buildDepError "ejdb2-binding"))
            ];
          buildable = true;
          };
        };
      };
    }