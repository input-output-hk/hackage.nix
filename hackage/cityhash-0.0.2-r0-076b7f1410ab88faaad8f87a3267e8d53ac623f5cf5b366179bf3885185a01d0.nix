{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cityhash"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "as@hacks.yi.org";
      author = "Austin Seipp";
      homepage = "http://github.com/thoughtpolice/hs-cityhash";
      url = "";
      synopsis = "bindings to Google CityHash";
      description = "This package implements a binding to the google CityHash family of hashing functions.\nSee <http://code.google.com/p/cityhash/> for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."cityhash" or ((hsPkgs.pkgs-errors).buildDepError "cityhash"))
            ];
          buildable = true;
          };
        };
      };
    }