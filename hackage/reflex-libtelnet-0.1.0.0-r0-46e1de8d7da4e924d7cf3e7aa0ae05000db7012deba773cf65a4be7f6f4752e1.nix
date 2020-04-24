{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "reflex-libtelnet"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) 2019 Jack Kelly";
      maintainer = "jack@jackkelly.name";
      author = "Jack Kelly";
      homepage = "https://git.sr.ht/~jack/reflex-libtelnet";
      url = "";
      synopsis = "Reflex bindings for libtelnet";
      description = "Wraps https://git.sr.ht/~jack/libtelnet-haskell , so you\ncan handle telnet data streams using reflex\n'Reflex.Event's. See @README.md@ or\n\"Reflex.LibTelnet\" to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."dependent-sum-template" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum-template"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."libtelnet" or ((hsPkgs.pkgs-errors).buildDepError "libtelnet"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          ];
        buildable = true;
        };
      };
    }