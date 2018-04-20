{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "logfloat";
          version = "0.11.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007--2009 wren ng thornton";
        maintainer = "wren@community.haskell.org";
        author = "wren ng thornton";
        homepage = "http://code.haskell.org/~wren/";
        url = "";
        synopsis = "Log-domain floating point numbers";
        description = "This module presents a type for storing numbers\nin the log-domain. The main reason for doing this\nis to prevent underflow when multiplying many\nprobabilities as is done in Hidden Markov Models.\nIt is also helpful for preventing overflow.";
        buildType = "Simple";
      };
      components = {
        logfloat = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
            ]
            else [ hsPkgs.base ];
        };
      };
    }