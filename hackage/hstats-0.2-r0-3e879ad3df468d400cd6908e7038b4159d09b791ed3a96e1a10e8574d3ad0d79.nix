{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hstats";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, SFTank";
      maintainer = "mbeddoe@<nospam>sftank.net";
      author = "Marshall Beddoe";
      homepage = "http://www.sftank.net";
      url = "";
      synopsis = "Statistical Computing in Haskell";
      description = "A library of commonly used statistical functions";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }