{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "quickcheck-regex"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Audrey Tang 2014 (CC0)";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "http://github.com/audreyt/quickcheck-regex/";
      url = "";
      synopsis = "QuickCheck instances for arbitrary regular expressions and regex-conforming strings";
      description = "QuickCheck instances for arbitrary regular expressions and regex-conforming strings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."regex-genex" or ((hsPkgs.pkgs-errors).buildDepError "regex-genex"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }