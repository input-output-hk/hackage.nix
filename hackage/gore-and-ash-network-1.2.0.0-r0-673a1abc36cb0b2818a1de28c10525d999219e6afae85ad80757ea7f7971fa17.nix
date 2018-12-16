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
        name = "gore-and-ash-network";
        version = "1.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha,\n2013-2015 John Ericson,\n2002-2013 Lee Salzman";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha\nJohn Ericson\nLee Salzman";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash-network";
      url = "";
      synopsis = "Core module for Gore&Ash engine with low level network API";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.ghc-prim)
          (hsPkgs.gore-and-ash)
          (hsPkgs.gore-and-ash-logging)
          (hsPkgs.hashable)
          (hsPkgs.integer-gmp)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.typesafe-endian)
          (hsPkgs.unordered-containers)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }