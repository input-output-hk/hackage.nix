{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = false;
      useffi = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "logfloat";
        version = "0.12.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007--2010 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Log-domain floating point numbers";
      description = "This module presents a type for storing numbers\nin the log-domain. The main reason for doing this\nis to prevent underflow when multiplying many\nprobabilities as is done in Hidden Markov Models.\nIt is also helpful for preventing overflow.";
      buildType = "Simple";
    };
    components = {
      "logfloat" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ];
        libs = pkgs.lib.optional (flags.useffi) (pkgs."m");
      };
    };
  }