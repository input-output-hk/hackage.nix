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
        version = "0.2.1";
      };
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
      "libcspm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.directory)
          (hsPkgs.graph-wrapper)
          (hsPkgs.value-supply)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.libcspm)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }