{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "test-simple"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko, 2012";
      maintainer = "boriss@gmail.com";
      author = "Boris Sukholitko";
      homepage = "";
      url = "";
      synopsis = "Simple Perl inspired testing";
      description = "Test.Simple provides simple, Perl inspired primitives for easy testing. It outputs test\nresults in TAP format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."state-plus" or ((hsPkgs.pkgs-errors).buildDepError "state-plus"))
          ];
        buildable = true;
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-simple" or ((hsPkgs.pkgs-errors).buildDepError "test-simple"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."executable-path" or ((hsPkgs.pkgs-errors).buildDepError "executable-path"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }