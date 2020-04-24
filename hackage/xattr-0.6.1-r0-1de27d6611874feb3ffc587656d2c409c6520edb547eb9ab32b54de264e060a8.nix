{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xattr"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Evan Klitzke, (c) 2012 by Deian Stefan, (c) 2012 by Amit Levy";
      maintainer = "Deian Stefan <deian@cs.stanford.edu>";
      author = "Evan Klitzke, Deian Stefan";
      homepage = "";
      url = "";
      synopsis = "Haskell extended file attributes interface";
      description = "Relatively low-level interface to work with extended attributes\non Unix systems. This is a fairly straightforward port of the\nAPI exposed by SGI's libattr.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        libs = (pkgs.lib).optional (!system.isOsx) (pkgs."attr" or ((hsPkgs.pkgs-errors).sysDepError "attr"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."xattr" or ((hsPkgs.pkgs-errors).buildDepError "xattr"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }