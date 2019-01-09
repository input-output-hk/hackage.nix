{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "htoml-megaparsec"; version = "2.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2016 Cies Breijs, 2017-2018 Vanessa McHale";
      maintainer = "Vanessa McHale <vamchale@gmail.com>";
      author = "Cies Breijs, Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/htoml-megaparsec";
      url = "";
      synopsis = "Parser for TOML files";
      description = "TOML is an obvious and minimal format for config files.\nThis package provides a TOML parser\nbuilt with the Megaparsec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.megaparsec)
          (hsPkgs.htoml-internal)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.composition-prelude)
          ];
        };
      sublibs = {
        "htoml-internal" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.megaparsec)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.deepseq)
            (hsPkgs.time)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs.void);
          };
        };
      tests = {
        "htoml-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.megaparsec)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.htoml-megaparsec)
            (hsPkgs.htoml-internal)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.htoml-megaparsec)
            (hsPkgs.htoml-internal)
            (hsPkgs.criterion)
            (hsPkgs.text)
            ];
          };
        };
      };
    }