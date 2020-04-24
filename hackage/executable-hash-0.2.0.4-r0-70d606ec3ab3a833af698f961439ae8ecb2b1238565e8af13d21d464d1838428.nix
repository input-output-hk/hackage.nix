{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "executable-hash"; version = "0.2.0.4"; };
      license = "MIT";
      copyright = "2015 FP Complete";
      maintainer = "FP Complete <sloan@fpcomplete.com>";
      author = "Michael Sloan";
      homepage = "http://github.com/fpco/executable-hash";
      url = "";
      synopsis = "Provides the SHA1 hash of the program executable";
      description = "See README.md";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or ((hsPkgs.pkgs-errors).buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cryptohash or (pkgs.buildPackages.cryptohash or ((hsPkgs.pkgs-errors).buildToolDepError "cryptohash")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.file-embed or (pkgs.buildPackages.file-embed or ((hsPkgs.pkgs-errors).buildToolDepError "file-embed")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or ((hsPkgs.pkgs-errors).buildToolDepError "template-haskell")))
        ];
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