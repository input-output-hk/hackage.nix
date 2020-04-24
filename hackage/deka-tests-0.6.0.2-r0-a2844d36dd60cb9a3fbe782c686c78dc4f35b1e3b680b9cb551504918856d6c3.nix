{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "deka-tests"; version = "0.6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014 Omari Norman";
      maintainer = "Omari Norman, omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://github.com/massysett/deka";
      url = "";
      synopsis = "Tests for deka, decimal floating point arithmetic";
      description = "deka provides decimal floating point arithmetic.  It is based on\nmpdecimal, the C library used to provide support for the Decimal\nmodule in Python 3.\n\nYou will need to install mpdecimal to use deka; otherwise your\nexecutables will not link.  It is available at\n\n<http://www.bytereef.org/mpdecimal/>\n\nmpdecimal has also been packaged for some Linux distributions,\nsuch as Debian (libmpdec-dev - available in Jessie and later) and\nArch (mpdecimal).\n\nmpdecimal, in turn, implements the General Decimal Arithmetic\nSpecification, which is available at\n\n<http://speleotrove.com/decimal/>\n\nFor more on deka, please see the Github home page at\n\n<https://github.com/massysett/deka>\n\nThis package contains only tests, so that other packages\nmay also use the tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deka" or ((hsPkgs.pkgs-errors).buildDepError "deka"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "deka-dectest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deka" or ((hsPkgs.pkgs-errors).buildDepError "deka"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            ];
          buildable = true;
          };
        };
      tests = {
        "deka-native" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deka" or ((hsPkgs.pkgs-errors).buildDepError "deka"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickpull" or ((hsPkgs.pkgs-errors).buildDepError "quickpull"))
            ];
          buildable = true;
          };
        };
      };
    }