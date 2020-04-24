{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conduit-throttle"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/conduit-throttle#readme";
      url = "";
      synopsis = "Throttle Conduit Producers";
      description = "This packages is based on the throttle-io-stream package and provides functionality for throttling Conduit producers according to a provided configuration.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          (hsPkgs."throttle-io-stream" or ((hsPkgs.pkgs-errors).buildDepError "throttle-io-stream"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          ];
        buildable = true;
        };
      tests = {
        "conduit-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
            (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
            (hsPkgs."throttle-io-stream" or ((hsPkgs.pkgs-errors).buildDepError "throttle-io-stream"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."conduit-throttle" or ((hsPkgs.pkgs-errors).buildDepError "conduit-throttle"))
            (hsPkgs."throttle-io-stream" or ((hsPkgs.pkgs-errors).buildDepError "throttle-io-stream"))
            (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }