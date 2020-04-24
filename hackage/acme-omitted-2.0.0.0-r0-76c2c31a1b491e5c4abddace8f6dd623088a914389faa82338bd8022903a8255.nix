{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "acme-omitted"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Joachim Fasting";
      maintainer = "joachifm@fastmail.fm";
      author = "Joachim Fasting";
      homepage = "https://github.com/joachifm/acme-omitted#readme";
      url = "";
      synopsis = "A name for omitted definitions";
      description = "acme-omitted provides a way of indicating that a definition\nhas been \\\"omitted\\\" (though not inherently undefinable), an\nalternative to \\\"Prelude.undefined\\\", and the means to observe\nthe difference.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }