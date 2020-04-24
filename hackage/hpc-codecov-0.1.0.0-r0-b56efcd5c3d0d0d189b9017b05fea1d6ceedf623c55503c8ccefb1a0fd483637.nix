{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hpc-codecov"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 8c6794b6";
      maintainer = "8c6794b6@gmail.com";
      author = "8c6794b6";
      homepage = "https://github.com/8c6794b6/hpc-codecov#readme";
      url = "";
      synopsis = "Generate codecov report from hpc data";
      description = "The hpc-codecov package contains an executable and library codes for\ngenerating <https://codecov.io Codeocv> JSON coverage report from\n@.tix@ and @.mix@ files made with\n<https://hackage.haskell.org/package/hpc hpc>\n\nSee <https://github.com/8c6794b6/hpc-codecov#readme README> for\nmore info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hpc" or ((hsPkgs.pkgs-errors).buildDepError "hpc"))
          ];
        buildable = true;
        };
      exes = {
        "hpc-codecov" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hpc-codecov" or ((hsPkgs.pkgs-errors).buildDepError "hpc-codecov"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hpc-codecov" or ((hsPkgs.pkgs-errors).buildDepError "hpc-codecov"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }