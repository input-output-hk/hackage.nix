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
      specVersion = "1.10";
      identifier = {
        name = "microtimer";
        version = "0.0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Bryan O'Sullivan 2009-2010,\n(c) Austin Seipp 2013";
      maintainer = "Austin Seipp <aseipp@pobox.com>";
      author = "Bryan O'Sullivan";
      homepage = "http://thoughtpolice.github.com/hs-microtimer";
      url = "";
      synopsis = "A tiny library for benchmarking IO actions.";
      description = "A tiny library for benchmarking IO actions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
    };
  }