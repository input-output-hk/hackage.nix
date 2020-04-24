{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pipes-attoparsec"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Paolo Capriotti 2012-2012,\nRenzo Carbonara 2012-";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Paolo Capriotti, Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-attoparsec";
      url = "";
      synopsis = "Utilities to convert an Attoparsec parser into a pipe Pipe.";
      description = "Utilities to convert an Attoparsec 'Data.Attoparsec.Types.Parser' into\na 'Control.Proxy.Synonym.Pipe'.\n\nSee \"Control.Proxy.Attoparsec.Tutorial\" for an extensive introduction with\nexamples.\n\nVersion 0.1.* is not backwards compatible with previous versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."pipes-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "pipes-attoparsec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }