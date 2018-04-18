{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clash-lib";
          version = "0.3.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright © 2012-2014 University of Twente";
        maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
        author = "Christiaan Baaij";
        homepage = "http://christiaanb.github.io/clash2";
        url = "";
        synopsis = "CAES Language for Synchronous Hardware - As a Library";
        description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The merits of using a functional language to describe hardware comes\nfrom the fact that combinational circuits can be directly modelled as\nmathematical functions and that functional languages lend themselves very well\nat describing and (de-)composing mathematical functions.\n\nThis package provides:\n\n* The CoreHW internal language: SystemF + Letrec + Case-decomposition\n\n* The normalisation process that brings CoreHW in a normal form that can be\nconverted to a netlist\n\n* VHDL Backend\n\n* Blackbox/Primitive Handling\n\n\nFront-ends (for: parsing, typecheck, etc.) are provided by separate packages:\n\n* <https://github.com/christiaanb/Idris-dev Idris Frontend>\n\n* <http://hackage.haskell.org/package/clash-ghc GHC/Haskell Frontend>\n\n\nPrelude library: <http://hackage.haskell.org/package/clash-prelude>";
        buildType = "Simple";
      };
      components = {
        clash-lib = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.concurrent-supply
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.errors
            hsPkgs.fgl
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.ListLike
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unbound
            hsPkgs.unordered-containers
            hsPkgs.uu-parsinglib
            hsPkgs.wl-pprint-text
          ];
        };
      };
    }