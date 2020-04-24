{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      pedantic = false;
      binary = true;
      data-default = true;
      deepseq = true;
      cereal = false;
      safecopy = false;
      lattices = false;
      dhall = true;
      serialise = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "verbosity"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2019 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/verbosity";
      url = "";
      synopsis = "Simple enum that encodes application verbosity.";
      description = "Simple enum that encodes application verbosity with various useful instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
          ] ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))) ++ (pkgs.lib).optional (flags.data-default) (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.safecopy) (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))) ++ (pkgs.lib).optional (flags.lattices) (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))) ++ (pkgs.lib).optional (flags.dhall) (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))) ++ (pkgs.lib).optional (flags.serialise) (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"));
        buildable = true;
        };
      };
    }