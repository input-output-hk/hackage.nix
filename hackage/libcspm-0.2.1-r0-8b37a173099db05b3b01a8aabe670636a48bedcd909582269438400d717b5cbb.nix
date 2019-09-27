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
      specVersion = "1.9.2";
      identifier = { name = "libcspm"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Thomas Gibson-Robinson";
      maintainer = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      author = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      homepage = "https://github.com/tomgr/libcspm";
      url = "";
      synopsis = "A library providing a parser, type checker and evaluator for CSPM.";
      description = "This library provides a parser, type checker and evaluator for machine CSP.\nThe parser is designed to be compatible with FDR2 and, in particular, deals\nwith the ambiguity between greater than and end of sequence in the same way\n(as far as possible, see \"CSPM.Parser\" for more information). The\ntypechecker is as liberal as it is possible to make a typechecker without\nmaking typechecking undecidable. Documentation on the type system is\nforthcoming. The evaluator is relatively experimental, but should be able\nto evaluate any CSPM expression that FDR2 can. The output of this phase\n(if a process is evaluated) is a tree of CSP (note not CSPM) operator\napplications which should be suitable for input into a refinement checker,\nor other process algebraic tool.\n\nThe main module of interest will be the \"CSPM\" module. This packages up\nmost of the functionality of the library in an easy to use, relatively\nhigh level format. See \"CSPM\" for an example of how to use this module.\n\nVersion Numbering Policy: point releases (i.e. from @x.y.z@ to @x.y.z'@)\nare guaranteed to be backwards compatible. Minor releases (i.e.\nfrom @x.y.z@ to @x.y'.z'@) will not be backwards compatible, but should be\nrelatively easy to port to. Major changes (i.e. from @x.y.z@ to @x'.y'.z'@)\nwill not be backwards compatible and may include large API redesigns.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."graph-wrapper" or (buildDepError "graph-wrapper"))
          (hsPkgs."value-supply" or (buildDepError "value-supply"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."libcspm" or (buildDepError "libcspm"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }