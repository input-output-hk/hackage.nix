{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      aeson = true;
      bytes = true;
      cereal = true;
      hashable = true;
      quickcheck = true;
      serialise = true;
    } // flags;
  in {
    flags = _flags;
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
      "exinst" = {
        depends  = ((((([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.constraints)
          (hsPkgs.deepseq)
          (hsPkgs.profunctors)
          (hsPkgs.singletons)
        ] ++ pkgs.lib.optional (_flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (_flags.bytes) (hsPkgs.bytes)) ++ pkgs.lib.optional (_flags.cereal || _flags.bytes) (hsPkgs.cereal)) ++ pkgs.lib.optional (_flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (_flags.quickcheck) (hsPkgs.QuickCheck)) ++ pkgs.lib.optionals (_flags.serialise) [
          (hsPkgs.cborg)
          (hsPkgs.serialise)
        ];
      };
      tests = {
        "tests" = {
          depends  = (((([
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
          ] ++ pkgs.lib.optional (_flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (_flags.bytes) (hsPkgs.bytes)) ++ pkgs.lib.optional (_flags.cereal || _flags.bytes) (hsPkgs.cereal)) ++ pkgs.lib.optional (_flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optionals (_flags.serialise) [
            (hsPkgs.cborg)
            (hsPkgs.serialise)
          ];
        };
      };
    };
  }