{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ige"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "owen@olynch.me";
      author = "Owen Lynch";
      homepage = "https://github.com/olynch/ige";
      url = "";
      synopsis = "An keyboard-driven interactive graph editor";
      description = "`IGE` attempts to build a reusable library for implementing graph editors. The intent is to allow a new class of programming languages that have non-linear structure. See `glance` (an alternative syntax for haskell) for one example of such a structure. Other applications include circuit design, commutative diagram drawing, server configuration. Currently a very early alpha.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ige" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
            (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
            (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }