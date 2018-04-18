{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "netlist-to-vhdl";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 University of Kansas";
        maintainer = "garrin.kimmell@gmail.com";
        author = "Garrin Kimmell";
        homepage = "";
        url = "git://github.com/ku-fpg/netlist.git";
        synopsis = "Convert a Netlist AST to VHDL";
        description = "Convert a Netlist AST to VHDL";
        buildType = "Simple";
      };
      components = {
        netlist-to-vhdl = {
          depends  = [
            hsPkgs.netlist
            hsPkgs.pretty
          ] ++ [ hsPkgs.base ];
        };
      };
    }