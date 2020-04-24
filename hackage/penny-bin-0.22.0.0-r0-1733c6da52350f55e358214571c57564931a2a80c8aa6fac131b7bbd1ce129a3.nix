{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = false;
      build-penny = true;
      build-selloff = true;
      build-diff = true;
      build-reprint = true;
      build-reconcile = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "penny-bin"; version = "0.22.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012-2013 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Deprecated - use penny package instead";
      description = "This package is now deprecated.  Use the penny package instead.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "penny" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."penny-lib" or ((hsPkgs.pkgs-errors).buildDepError "penny-lib"))
            ];
          buildable = if !flags.build-penny then false else true;
          };
        "penny-selloff" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."penny-lib" or ((hsPkgs.pkgs-errors).buildDepError "penny-lib"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."multiarg" or ((hsPkgs.pkgs-errors).buildDepError "multiarg"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if !flags.build-selloff then false else true;
          };
        "penny-diff" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."penny-lib" or ((hsPkgs.pkgs-errors).buildDepError "penny-lib"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."multiarg" or ((hsPkgs.pkgs-errors).buildDepError "multiarg"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            ];
          buildable = if !flags.build-diff then false else true;
          };
        "penny-reprint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."multiarg" or ((hsPkgs.pkgs-errors).buildDepError "multiarg"))
            (hsPkgs."penny-lib" or ((hsPkgs.pkgs-errors).buildDepError "penny-lib"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !flags.build-reprint then false else true;
          };
        "penny-reconcile" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."penny-lib" or ((hsPkgs.pkgs-errors).buildDepError "penny-lib"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."multiarg" or ((hsPkgs.pkgs-errors).buildDepError "multiarg"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            ];
          buildable = if !flags.build-reconcile then false else true;
          };
        };
      };
    }