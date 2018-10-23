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
        name = "lens-utils";
        version = "1.4.5";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/lens-utils";
      url = "";
      synopsis = "Collection of missing lens utilities.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "lens-utils" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.monoid)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }