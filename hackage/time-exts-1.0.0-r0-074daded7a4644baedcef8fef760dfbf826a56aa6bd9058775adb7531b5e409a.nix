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
      specVersion = "1.16.0";
      identifier = {
        name = "time-exts";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013, Enzo Haussecker. All rights reserved.";
      maintainer = "Enzo Haussecker <enzo@ucsd.edu>";
      author = "Enzo Haussecker <enzo@ucsd.edu>";
      homepage = "https://github.com/enzoh/time-exts";
      url = "";
      synopsis = "Efficient Timestamps";
      description = "Extensions to the Haskell time library, providing efficient Unix, UTC, and local timestamps.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.convertible)
          (hsPkgs.deepseq)
          (hsPkgs.fclabels)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.timezone-olson)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }