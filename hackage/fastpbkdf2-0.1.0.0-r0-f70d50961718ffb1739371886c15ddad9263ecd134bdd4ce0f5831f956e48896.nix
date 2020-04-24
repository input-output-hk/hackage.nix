{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fastpbkdf2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Alfredo Di Napoli";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/adinapoli/fastpbkdf2-hs#readme";
      url = "";
      synopsis = "Haskell bindings to the fastpbkdf2 C library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = if system.isWindows || system.isWindows
          then [
            (pkgs."eay32" or ((hsPkgs.pkgs-errors).sysDepError "eay32"))
            (pkgs."ssl32" or ((hsPkgs.pkgs-errors).sysDepError "ssl32"))
            ]
          else [
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            ];
        buildable = true;
        };
      tests = {
        "fastpbkdf2-hs-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."fastpbkdf2" or ((hsPkgs.pkgs-errors).buildDepError "fastpbkdf2"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fastpbkdf2-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."fastpbkdf2" or ((hsPkgs.pkgs-errors).buildDepError "fastpbkdf2"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."pbkdf" or ((hsPkgs.pkgs-errors).buildDepError "pbkdf"))
            ];
          buildable = true;
          };
        };
      };
    }