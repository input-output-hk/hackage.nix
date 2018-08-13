{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      useffi = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "logfloat";
        version = "0.13.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007--2015 wren gayle romano";
      maintainer = "wren@community.haskell.org";
      author = "wren gayle romano";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Log-domain floating point numbers";
      description = "This module presents a type for storing numbers\nin the log-domain. The main reason for doing this\nis to prevent underflow when multiplying many\nprobabilities as is done in Hidden Markov Models.\nIt is also helpful for preventing overflow.";
      buildType = "Simple";
    };
    components = {
      "logfloat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
        libs = pkgs.lib.optional (_flags.useffi) (pkgs."m");
      };
    };
  }