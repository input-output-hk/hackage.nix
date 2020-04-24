{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { typelitssupport = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "OddWord"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2015 Robin KAY";
      maintainer = "Robin KAY <komadori@gekkou.co.uk>";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/";
      url = "";
      synopsis = "Provides a wrapper for deriving word types with fewer bits.";
      description = "Provdes the 'OddWord' type, which wraps an existing integer type and\nexposes a subset of its bits as a new narrower word type. Includes\npredefined type synonyms for all the odd sized words up to 63 bits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "oddword-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."OddWord" or ((hsPkgs.pkgs-errors).buildDepError "OddWord"))
            ];
          buildable = true;
          };
        "oddword-tests-typelits" = {
          depends = (pkgs.lib).optionals (flags.typelitssupport && (compiler.isGhc && (compiler.version).ge "7.8")) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."OddWord" or ((hsPkgs.pkgs-errors).buildDepError "OddWord"))
            ];
          buildable = if flags.typelitssupport && (compiler.isGhc && (compiler.version).ge "7.8")
            then true
            else false;
          };
        };
      };
    }