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
        name = "lens-properties";
        version = "4.11";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2015 Edward A. Kmett, Copyright (C) 2014 Oliver Charles";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett and Oliver Charles";
      homepage = "http://github.com/ekmett/lens/";
      url = "";
      synopsis = "QuickCheck properties for lens";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
        ];
      };
    };
  }