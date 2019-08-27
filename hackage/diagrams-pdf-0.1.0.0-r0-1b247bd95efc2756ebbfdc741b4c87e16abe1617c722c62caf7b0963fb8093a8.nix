let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-pdf"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013, alpheccar.org";
      maintainer = "misc@alpheccar.org";
      author = "alpheccar";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "PDF backend for diagrams drawing EDSL";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL to PDF\nfiles.  It uses @HPDF@ making it suitable for use on\nany platform.\n\nIt is a very preliminary version where only the\ndiagrams Logo generation has been tested.\n\nThe package provides the following modules:\n\n* \"Diagrams.Backend.Pdf.CmdLine\" - if you're\njust getting started with diagrams, begin here.\n\n* \"Diagrams.Backend.Pdf\" - look at this next.\nThe general API for the HPDF backend.\n\nAdditional documentation can be found in the\nREADME file distributed with the source tarball";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monoid-extras" or (buildDepError "monoid-extras"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."HPDF" or (buildDepError "HPDF"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."colour" or (buildDepError "colour"))
          ];
        };
      };
    }