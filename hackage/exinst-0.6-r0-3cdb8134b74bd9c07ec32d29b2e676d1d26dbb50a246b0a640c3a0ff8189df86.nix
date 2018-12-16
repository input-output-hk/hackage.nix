{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      aeson = true;
      bytes = true;
      cereal = true;
      hashable = true;
      quickcheck = true;
      serialise = true;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "exinst";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2018";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Dependent pairs and their instances.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.constraints)
          (hsPkgs.deepseq)
          (hsPkgs.profunctors)
          (hsPkgs.singletons)
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (flags.bytes) (hsPkgs.bytes)) ++ pkgs.lib.optional (flags.cereal || flags.bytes) (hsPkgs.cereal)) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs.QuickCheck)) ++ pkgs.lib.optionals (flags.serialise) [
          (hsPkgs.cborg)
          (hsPkgs.serialise)
        ];
      };
      tests = {
        "tests" = {
          depends = (((([
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.constraints)
            (hsPkgs.deepseq)
            (hsPkgs.profunctors)
            (hsPkgs.QuickCheck)
            (hsPkgs.singletons)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (flags.bytes) (hsPkgs.bytes)) ++ pkgs.lib.optional (flags.cereal || flags.bytes) (hsPkgs.cereal)) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optionals (flags.serialise) [
            (hsPkgs.cborg)
            (hsPkgs.serialise)
          ];
        };
      };
    };
  }