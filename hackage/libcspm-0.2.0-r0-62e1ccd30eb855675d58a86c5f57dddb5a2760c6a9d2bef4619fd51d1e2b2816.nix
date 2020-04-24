{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "libcspm"; version = "0.2.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."graph-wrapper" or ((hsPkgs.pkgs-errors).buildDepError "graph-wrapper"))
          (hsPkgs."value-supply" or ((hsPkgs.pkgs-errors).buildDepError "value-supply"))
          ];
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libcspm" or ((hsPkgs.pkgs-errors).buildDepError "libcspm"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }