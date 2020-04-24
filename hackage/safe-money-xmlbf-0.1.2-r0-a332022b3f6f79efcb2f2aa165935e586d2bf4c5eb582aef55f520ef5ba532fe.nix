{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "safe-money-xmlbf"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2016-2018";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/safe-money";
      url = "";
      synopsis = "Instances from the xmlbf library for the safe-money library.";
      description = "This library exports @FromXml@ and @ToXml@ instances (from the @xmlbf@\nlibrary) for many of the types exported by the @safe-money@ library.\n\nNote: The code in this library used to be part of the @safe-money@\nlibrary itself, so these instances are intended to be backwards\ncompatible with older versions of @safe-money@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."safe-money" or ((hsPkgs.pkgs-errors).buildDepError "safe-money"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."xmlbf" or ((hsPkgs.pkgs-errors).buildDepError "xmlbf"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."safe-money" or ((hsPkgs.pkgs-errors).buildDepError "safe-money"))
            (hsPkgs."safe-money-xmlbf" or ((hsPkgs.pkgs-errors).buildDepError "safe-money-xmlbf"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."xmlbf" or ((hsPkgs.pkgs-errors).buildDepError "xmlbf"))
            ];
          buildable = true;
          };
        };
      };
    }