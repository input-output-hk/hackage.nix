{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { all = false; unit = false; tools = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kansas-lava"; version = "0.2.4.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://ittc.ku.edu/csdl/fpg/Tools/KansasLava";
      url = "";
      synopsis = "Kansas Lava is a hardware simulator and VHDL generator.";
      description = "Kansas Lava is a Domain Specific Language (DSL) for expressing\nhardware-oriented descriptions of computations, and is hosted inside\nthe language Haskell. Kansas Lava programs are descriptions of\nspecific hardware entities, the connections between them, and other\ncomputational abstractions that can compile down to these entities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dotgen)
          (hsPkgs.containers)
          (hsPkgs.sized-types)
          (hsPkgs.data-default)
          (hsPkgs.random)
          (hsPkgs.strict)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.cmdargs)
          (hsPkgs.process)
          (hsPkgs.netlist)
          (hsPkgs.netlist-to-vhdl)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.data-reify)
          ];
        };
      exes = {
        "kansas-lava-unittest" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs.base)
              (hsPkgs.dotgen)
              (hsPkgs.containers)
              (hsPkgs.sized-types)
              (hsPkgs.data-default)
              (hsPkgs.random)
              (hsPkgs.strict)
              (hsPkgs.filepath)
              (hsPkgs.directory)
              (hsPkgs.cmdargs)
              (hsPkgs.process)
              (hsPkgs.netlist)
              (hsPkgs.netlist-to-vhdl)
              (hsPkgs.template-haskell)
              (hsPkgs.bytestring)
              (hsPkgs.data-reify)
              ]
            else [ (hsPkgs.base) ];
          };
        "kansas-lava-testreport" = {
          depends = if flags.unit || flags.all
            then [
              (hsPkgs.base)
              (hsPkgs.dotgen)
              (hsPkgs.containers)
              (hsPkgs.sized-types)
              (hsPkgs.data-default)
              (hsPkgs.random)
              (hsPkgs.strict)
              (hsPkgs.filepath)
              (hsPkgs.directory)
              (hsPkgs.cmdargs)
              (hsPkgs.process)
              (hsPkgs.netlist)
              (hsPkgs.netlist-to-vhdl)
              (hsPkgs.template-haskell)
              (hsPkgs.bytestring)
              (hsPkgs.data-reify)
              ]
            else [ (hsPkgs.base) ];
          };
        "kansas-lava-tbf2vcd" = {
          depends = if flags.tools || flags.all
            then [
              (hsPkgs.base)
              (hsPkgs.dotgen)
              (hsPkgs.containers)
              (hsPkgs.sized-types)
              (hsPkgs.data-default)
              (hsPkgs.random)
              (hsPkgs.strict)
              (hsPkgs.filepath)
              (hsPkgs.directory)
              (hsPkgs.cmdargs)
              (hsPkgs.process)
              (hsPkgs.netlist)
              (hsPkgs.netlist-to-vhdl)
              (hsPkgs.template-haskell)
              (hsPkgs.bytestring)
              (hsPkgs.data-reify)
              ]
            else [ (hsPkgs.base) ];
          };
        };
      };
    }