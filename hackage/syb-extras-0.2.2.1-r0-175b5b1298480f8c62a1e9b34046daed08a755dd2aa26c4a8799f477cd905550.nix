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
      specVersion = "1.6";
      identifier = {
        name = "syb-extras";
        version = "0.2.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/syb-extras/";
      url = "";
      synopsis = "Higher order versions of the Scrap Your Boilerplate classes";
      description = "Higher order versions of the Scrap Your Boilerplate classes to ease programming with polymorphic recursion and reduce UndecidableInstances";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.prelude-extras)
          (hsPkgs.eq)
        ];
      };
    };
  }