{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "perhaps";
        version = "0";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2018 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/perhaps/";
      url = "";
      synopsis = "Perhaps, a monad";
      description = "Perhaps, a monad.";
      buildType = "Custom";
    };
    components = {
      "perhaps" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs.generic-deriving)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.void)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.perhaps)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }