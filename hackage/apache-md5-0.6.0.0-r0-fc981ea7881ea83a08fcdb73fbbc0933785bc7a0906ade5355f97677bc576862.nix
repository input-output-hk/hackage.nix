{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pedantic = false; deepseq = false; };
    package = {
      specVersion = "1.9.1";
      identifier = { name = "apache-md5"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, 2010, 2012 - 2014 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško <peter.trsko@gmail.com>";
      homepage = "https://github.com/trskop/apache-md5";
      url = "";
      synopsis = "Apache specific MD5 digest algorighm.";
      description = "Haskell implementation of Apache HTTP server specific MD5 digest algorithm\nthat uses OpenSSL @MD5()@ function.\n\nREADME and ChangeLog can be found in source code package and on GitHub:\n\n* <https://github.com/trskop/apache-md5/blob/master/README.md>\n\n* <https://github.com/trskop/apache-md5/blob/master/ChangeLog.md>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"));
        libs = [
          (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
          ];
        buildable = true;
        };
      tests = {
        "apache-md5-unit-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          libs = [
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "apache-md5-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            ];
          libs = [
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            ];
          buildable = true;
          };
        };
      };
    }