{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "generic-lens-labels";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017-2018 Douglas Wilson";
      maintainer = "douglas.wilson@gmail.com";
      author = "Douglas Wilson";
      homepage = "https://github.com/duog/generic-lens-labels";
      url = "";
      synopsis = "GHC.OverloadedLabels.IsLabel instance for lenses from ghc-generics";
      description = "Provides an orphan GHC.OverloadedLabels.IsLabel instance for lenses from\nghc-generics. All effort is taken to play as nicely as possible with other\nIsLabel instances -- however orphan instances are inherently problematic.\nPlease do not depend on this package from any hackage libraries.";
      buildType = "Simple";
    };
    components = {
      "generic-lens-labels" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.generic-lens)
        ];
      };
    };
  }