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
      specVersion = "1.6";
      identifier = {
        name = "type-int";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2006-2011 Edward Kmett. All Rights Reserved";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://github.com/ekmett/type-int";
      url = "";
      synopsis = "Type Level 2s- and 16s- Complement Integers";
      description = "Type level 2s- and 16s- complement Integers (positive and negative),\nBooleans, Ord and Eq.";
      buildType = "Simple";
    };
    components = {
      "type-int" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }