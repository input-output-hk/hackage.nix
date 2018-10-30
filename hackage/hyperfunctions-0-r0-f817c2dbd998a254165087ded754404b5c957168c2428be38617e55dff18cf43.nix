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
      specVersion = "1.8";
      identifier = {
        name = "hyperfunctions";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/hyperfunctions";
      url = "";
      synopsis = "Hyperfunctions";
      description = "Hyperfunctions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.distributive)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
        ];
      };
    };
  }