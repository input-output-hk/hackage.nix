{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clash-systemverilog";
          version = "0.5.1";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright © 2015 University of Twente";
        maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
        author = "Christiaan Baaij";
        homepage = "http://www.clash-lang.org/";
        url = "";
        synopsis = "CAES Language for Synchronous Hardware - SystemVerilog backend";
        description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The merits of using a functional language to describe hardware comes\nfrom the fact that combinational circuits can be directly modelled as\nmathematical functions and that functional languages lend themselves very well\nat describing and (de-)composing mathematical functions.\n\nThis package provides:\n\n* SystemVerilog Backend";
        buildType = "Simple";
      };
      components = {
        "clash-systemverilog" = {
          depends  = [
            hsPkgs.base
            hsPkgs.clash-lib
            hsPkgs.clash-prelude
            hsPkgs.fgl
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.wl-pprint-text
          ];
        };
      };
    }