{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      derivedatatypeable = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "void";
        version = "0.5.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/void";
      url = "";
      synopsis = "A Haskell 98 logically uninhabited data type";
      description = "A Haskell 98 logically uninhabited data type. Used to indicate that a given term should not exist.";
      buildType = "Simple";
    };
    components = {
      "void" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
        ];
      };
    };
  }