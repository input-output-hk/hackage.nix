{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { deverror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-tcplugins-extra";
        version = "0.2.4";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2015-2016, University of Twente,\n2017-2018, QBayLogic";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "http://github.com/clash-lang/ghc-tcplugins-extra";
      url = "";
      synopsis = "Utilities for writing GHC type-checker plugins";
      description = "Utilities for writing GHC type-checker plugins, such as\ncreating constraints, with a stable API covering multiple\nGHC releases.";
      buildType = "Simple";
    };
    components = {
      "ghc-tcplugins-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
        ];
      };
    };
  }