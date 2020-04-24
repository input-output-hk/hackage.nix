{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "throttle-io-stream"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/throttle-io-stream#readme";
      url = "";
      synopsis = "Throttler between arbitrary IO producer and consumer functions";
      description = "This packages provides functionality for throttling IO using general IO callbacks. The throttling depends on a provided configuration. The supported throttling modes are producer throttling, consumer throttling or producer & consumer throttling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          ];
        buildable = true;
        };
      tests = {
        "throttle-io-stream-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."throttle-io-stream" or ((hsPkgs.pkgs-errors).buildDepError "throttle-io-stream"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."say" or ((hsPkgs.pkgs-errors).buildDepError "say"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }