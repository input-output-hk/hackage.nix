{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "netlist-to-vhdl"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 University of Kansas";
      maintainer = "garrin.kimmell@gmail.com";
      author = "Garrin Kimmell";
      homepage = "";
      url = "git://github.com/pheaver/netlist-verilog.git";
      synopsis = "Convert a Netlist AST to VHDL";
      description = "Convert a Netlist AST to VHDL";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."netlist" or (errorHandler.buildDepError "netlist"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }