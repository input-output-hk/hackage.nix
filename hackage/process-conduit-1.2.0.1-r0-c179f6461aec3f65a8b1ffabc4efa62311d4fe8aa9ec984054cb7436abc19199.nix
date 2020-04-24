{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "process-conduit"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2013, Hideyuki Tanaka";
      maintainer = "Michael Snoyman";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/snoyberg/process-conduit";
      url = "";
      synopsis = "Conduits for processes (deprecated)";
      description = "This package is deprecated. Please use Data.Conduit.Process from conduit-extra instead. The original code is maintained in Data.Conduit.ProcessOld for those wishing to use the older API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."control-monad-loop" or ((hsPkgs.pkgs-errors).buildDepError "control-monad-loop"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."shakespeare-text" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare-text"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          ];
        buildable = true;
        };
      tests = {
        "process-conduit-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."process-conduit" or ((hsPkgs.pkgs-errors).buildDepError "process-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }