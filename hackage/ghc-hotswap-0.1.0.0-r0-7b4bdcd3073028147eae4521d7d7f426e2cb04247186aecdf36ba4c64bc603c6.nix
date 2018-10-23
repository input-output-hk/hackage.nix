{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-hotswap";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2017-present, Facebook, Inc. All rights reserved.";
      maintainer = "The Haxl Team <haxl-team@fb.com>";
      author = "Facebook, Inc.";
      homepage = "https://github.com/fbsamples/ghc-hotswap";
      url = "";
      synopsis = "Library for hot-swapping shared objects in GHC";
      description = "Convenience API for safely hot-swapping shared objects using GHC's GHCi linker";
      buildType = "Simple";
    };
    components = {
      "ghc-hotswap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.concurrent-extra)
          (hsPkgs.deepseq)
          (hsPkgs.ghci)
        ];
      };
    };
  }