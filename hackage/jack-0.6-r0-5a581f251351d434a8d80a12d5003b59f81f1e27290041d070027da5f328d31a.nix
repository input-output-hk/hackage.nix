{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "jack"; version = "0.6"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Very basic bindings for the JACK Audio Connection Kit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."enumset" or ((hsPkgs.pkgs-errors).buildDepError "enumset"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        pkgconfig = [
          (pkgconfPkgs."jack" or ((hsPkgs.pkgs-errors).pkgConfDepError "jack"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "amplify" = {
          libs = [ (pkgs."jack" or ((hsPkgs.pkgs-errors).sysDepError "jack")) ];
          buildable = if !flags.buildexamples then false else true;
          };
        "impulse-train" = {
          libs = [ (pkgs."jack" or ((hsPkgs.pkgs-errors).sysDepError "jack")) ];
          buildable = if !flags.buildexamples then false else true;
          };
        "midimon" = {
          libs = [ (pkgs."jack" or ((hsPkgs.pkgs-errors).sysDepError "jack")) ];
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }