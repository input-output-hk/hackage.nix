{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "executable-hash"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2015 FP Complete";
      maintainer = "FP Complete <sloan@fpcomplete.com>";
      author = "Michael Sloan";
      homepage = "http://github.com/fpco/executable-hash";
      url = "";
      synopsis = "Provides the SHA1 hash of the program executable";
      description = "See README.md";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."executable-path" or ((hsPkgs.pkgs-errors).buildDepError "executable-path"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "inject-executable-hash" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."executable-hash" or ((hsPkgs.pkgs-errors).buildDepError "executable-hash"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-compute" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."executable-hash" or ((hsPkgs.pkgs-errors).buildDepError "executable-hash"))
            ];
          buildable = true;
          };
        "test-inject" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."executable-hash" or ((hsPkgs.pkgs-errors).buildDepError "executable-hash"))
            ];
          buildable = true;
          };
        "test-no-inject" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."executable-hash" or ((hsPkgs.pkgs-errors).buildDepError "executable-hash"))
            ];
          buildable = true;
          };
        };
      };
    }