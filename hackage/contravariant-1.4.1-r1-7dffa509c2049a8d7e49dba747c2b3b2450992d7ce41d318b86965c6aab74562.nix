{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      tagged = true;
      semigroups = true;
      safe = false;
      statevar = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "contravariant";
        version = "1.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2007-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/contravariant/";
      url = "";
      synopsis = "Contravariant functors";
      description = "Contravariant functors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (((([
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.9")) (hsPkgs.void)) ++ pkgs.lib.optional (flags.tagged && !(compiler.isGhc && compiler.version.ge "7.7")) (hsPkgs.tagged)) ++ pkgs.lib.optional (flags.semigroups && !(compiler.isGhc && compiler.version.ge "7.11")) (hsPkgs.semigroups)) ++ pkgs.lib.optional (flags.statevar) (hsPkgs.StateVar)) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.2" && compiler.version.lt "7.6")) (hsPkgs.ghc-prim);
      };
    };
  }