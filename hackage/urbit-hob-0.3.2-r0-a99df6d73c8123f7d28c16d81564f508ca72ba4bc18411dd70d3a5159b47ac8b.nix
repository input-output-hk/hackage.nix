{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { release = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "urbit-hob"; version = "0.3.2"; };
      license = "MIT";
      copyright = "2019 Jared Tobin";
      maintainer = "jared@jtobin.io";
      author = "Jared Tobin";
      homepage = "https://github.com/urbit/urbit-hob";
      url = "";
      synopsis = "Hoon-style atom manipulation and printing functions";
      description = "Here you can primarily find functions for dealing with the \\\"patp\\\" and\n\\\"patq\\\" /phonetic bases/ used by Urbit.  The \\@p encoding is used for naming\nships, while the \\@q encoding is used for arbitrary data; they each uniquely\nrepresent an underlying natural number (or /atom/) in a memorable and\npronounceable fashion.\n\nThe \\@p encoding is an /obfuscated/ representation of an underlying atom, in\nparticular, hence the \\\"ob\\\" in the library's name.\n\nThe @Urbit.Ob@ module exposes two families of functions, 'patp' and\n'fromPatp', and then 'patq' and 'fromPatq', for converting between\nrepresentations.  You can also render a 'Patp' or 'Patq' value as 'Text' via\nthe 'renderPatp' and 'renderPatq' functions, or parse them from 'Text' via\n'parsePatp' and 'parsePatq'.\n\nSince \\@p values represent ships, some utilities for dealing with ships are\nalso exposed.  The 'clan' and 'sein' functions are useful for determining a\nship's class and (default) parent, respectively.\n\nSome quick examples:\n\n>>> :set -XOverloadedStrings\n>>> import qualified Urbit.Ob as Ob\n>>> let nidsut = Ob.patp 15663360\n>>> let marzod = Ob.patq (Ob.fromPatp nidsut)\n>>> Ob.renderPatp nidsut\n\"~nidsut-tomdun\"\n>>> Ob.renderPatq marzod\n\"~mun-marzod\"\n>>> Ob.fromPatp nidsut\n15663360\n>>> Ob.parsePatp \"~nidsut-tomdun\"\nRight ~nidsut-tomdun\n>>> Ob.clan nidsut\nPlanet\n>>> Ob.sein nidsut\n~marzod";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."murmur3" or ((hsPkgs.pkgs-errors).buildDepError "murmur3"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "ob" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."urbit-hob" or ((hsPkgs.pkgs-errors).buildDepError "urbit-hob"))
            ];
          buildable = true;
          };
        "co" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."urbit-hob" or ((hsPkgs.pkgs-errors).buildDepError "urbit-hob"))
            ];
          buildable = true;
          };
        "title" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."urbit-hob" or ((hsPkgs.pkgs-errors).buildDepError "urbit-hob"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "ob-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."urbit-hob" or ((hsPkgs.pkgs-errors).buildDepError "urbit-hob"))
            ];
          buildable = true;
          };
        };
      };
    }