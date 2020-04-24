{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "next-ref"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "";
      url = "";
      synopsis = "A concurrency primitive for a slow consumer.";
      description = "A concurrency primitive for a slow consumer that can tolerate missing some updates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "next-ref-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."next-ref" or ((hsPkgs.pkgs-errors).buildDepError "next-ref"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }