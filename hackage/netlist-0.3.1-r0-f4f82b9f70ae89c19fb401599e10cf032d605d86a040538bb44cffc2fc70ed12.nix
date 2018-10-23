{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "netlist";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Signali Corp.\nCopyright (c) 2010 Philip Weaver.";
      maintainer = "andygill@ku.edu";
      author = "Philip Weaver <philip.weaver@gmail.com>";
      homepage = "";
      url = "git://github.com/pheaver/netlist-verilog.git";
      synopsis = "Netlist AST";
      description = "A very simplified and generic netlist designed to be compatible with\nHardware Description Languages (HDLs) like Verilog and VHDL.\nIncludes a simple inliner.";
      buildType = "Simple";
    };
    components = {
      "netlist" = {
        depends  = [
          (hsPkgs.binary)
          (hsPkgs.containers)
        ] ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }