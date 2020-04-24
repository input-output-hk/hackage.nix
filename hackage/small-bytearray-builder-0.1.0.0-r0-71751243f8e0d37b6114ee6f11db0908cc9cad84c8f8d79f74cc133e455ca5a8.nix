{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { checked = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "small-bytearray-builder"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/small-bytearray-builder";
      url = "";
      synopsis = "Serialize to a small byte arrays";
      description = "This is similar to the builder facilities provided by\n`Data.ByteString.Builder`. It is intended to be used in\nsituations where the following apply:\n\n* An individual entity will be serialized as a small\nnumber of bytes (less than 512).\n\n* A large number (more than 32) of entities will be serialized\none after another without anything between them.\n\nUnlike builders from the `bytestring` package, these builders\ndo not track their state when they run out of space. A builder\nthat runs out of space simply aborts and is rerun at the beginning\nof the next chunk. This strategy for building is suitable for most\nCSVs and several line protocols (carbon, InfluxDB, etc.).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
          (hsPkgs."primitive-offset" or ((hsPkgs.pkgs-errors).buildDepError "primitive-offset"))
          (hsPkgs."run-st" or ((hsPkgs.pkgs-errors).buildDepError "run-st"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (if flags.checked
          then [
            (hsPkgs."primitive-checked" or ((hsPkgs.pkgs-errors).buildDepError "primitive-checked"))
            ]
          else [
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            (hsPkgs."small-bytearray-builder" or ((hsPkgs.pkgs-errors).buildDepError "small-bytearray-builder"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }