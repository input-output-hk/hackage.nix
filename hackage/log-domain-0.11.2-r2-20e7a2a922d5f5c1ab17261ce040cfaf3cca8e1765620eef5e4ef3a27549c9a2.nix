{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-doctests = true;
      ffi = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "log-domain";
        version = "0.11.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/log-domain/";
      url = "";
      synopsis = "Log-domain arithmetic";
      description = "This package provides log-domain floats, doubles and complex numbers.";
      buildType = "Custom";
    };
    components = {
      "log-domain" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytes)
          (hsPkgs.cereal)
          (hsPkgs.comonad)
          (hsPkgs.deepseq)
          (hsPkgs.distributive)
          (hsPkgs.hashable)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.safecopy)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim);
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.generic-deriving)
            (hsPkgs.log-domain)
            (hsPkgs.semigroups)
            (hsPkgs.simple-reflect)
          ];
        };
      };
    };
  }