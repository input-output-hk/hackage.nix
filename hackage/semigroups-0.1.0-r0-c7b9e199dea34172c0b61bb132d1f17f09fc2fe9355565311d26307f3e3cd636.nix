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
      specVersion = "1.2";
      identifier = {
        name = "semigroups";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett, Copyright (C) 2004-2008 Dave Menendez";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Haskell 98 semigroups";
      description = "Haskell 98 semigroups";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }