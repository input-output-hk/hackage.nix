{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      aeson = true;
      bytes = true;
      binary = true;
      cereal = true;
      deepseq = true;
      hashable = true;
      quickcheck = true;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "exinst";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2017";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Recover type indexes and instances for your existentialized types.";
      description = "See the documention in the \"Exinst\" module.\n\nNote that most of the dependencies of this package are optional and can be disabled through cabal flags.";
      buildType = "Simple";
    };
    components = {
      "exinst" = {
        depends  = (((((([
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.profunctors)
          (hsPkgs.singletons)
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (flags.binary || flags.bytes) (hsPkgs.binary)) ++ pkgs.lib.optional (flags.bytes) (hsPkgs.bytes)) ++ pkgs.lib.optional (flags.cereal || flags.bytes) (hsPkgs.cereal)) ++ pkgs.lib.optional (flags.deepseq) (hsPkgs.deepseq)) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs.QuickCheck);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.constraints)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.profunctors)
            (hsPkgs.QuickCheck)
            (hsPkgs.singletons)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }