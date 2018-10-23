{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "libcspm";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Thomas Gibson-Robinson";
      maintainer = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      author = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      homepage = "https://github.com/tomgr/libcspm";
      url = "";
      synopsis = "A library providing a parser, type checker and evaluator for CSPM.";
      description = "This library provides a parser, type checker and evaluator for machine CSP.\nThe parser is designed to be compatible with FDR2 and, in particular, deals\nwith the ambiguity between greater than and end of sequence in the same way\n(as far as possible, see \"CSPM.Parser\" for more information). The\ntypechecker is as liberal as it is possible to make a typechecker without\nmaking typechecking undecidable. Documentation on the type system is\nforthcoming. The evaluator is relatively experimental, but should be able\nto evaluate any CSPM expression that FDR2 can. The output of this phase\n(if a process is evaluated) is a tree of CSP (note not CSPM) operator\napplications which should be suitable for input into a refinement checker,\nor other process algebraic tool.\n\nThe main module of interest will be the \"CSPM\" module. This packages up\nmost of the functionality of the library in an easy to use, relatively\nhigh level format. See \"CSPM\" for an example of how to use this module.";
      buildType = "Simple";
    };
    components = {
      "libcspm" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.graph-wrapper)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.value-supply)
        ];
      };
      tests = {
        "libcspm_tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.libcspm)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }