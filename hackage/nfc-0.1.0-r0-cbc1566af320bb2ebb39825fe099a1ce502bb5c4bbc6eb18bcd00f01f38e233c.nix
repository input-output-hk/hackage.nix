{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nfc"; version = "0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "John Galt <jgalt@centromere.net>";
      author = "";
      homepage = "https://github.com/centromere/nfc#readme";
      url = "";
      synopsis = "libnfc bindings";
      description = "nfc is a set of bindings to libnfc";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [ (pkgs."nfc" or ((hsPkgs.pkgs-errors).sysDepError "nfc")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "print-mifare-uid-forever" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."nfc" or ((hsPkgs.pkgs-errors).buildDepError "nfc"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }