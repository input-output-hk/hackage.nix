{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { useffi = true; };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "logfloat";
        version = "0.13.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007--2015 wren gayle romano";
      maintainer = "wren@community.haskell.org";
      author = "wren gayle romano";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Log-domain floating point numbers";
      description = "This module presents a type for storing numbers in the log-domain.\nThe main reason for doing this is to prevent underflow when\nmultiplying many probabilities as is done in Hidden Markov\nModels. It is also helpful for preventing overflow.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
        libs = pkgs.lib.optional (flags.useffi) (pkgs."m");
      };
    };
  }