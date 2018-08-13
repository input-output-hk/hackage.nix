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
      deepseq = true;
      hashable = true;
      quickcheck = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "exinst";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2017";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Recover instances for your existential types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "exinst" = {
        depends  = (((([
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.profunctors)
          (hsPkgs.singletons)
        ] ++ pkgs.lib.optional (_flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optionals (_flags.bytes) [
          (hsPkgs.bytes)
          (hsPkgs.binary)
          (hsPkgs.cereal)
        ]) ++ pkgs.lib.optional (_flags.deepseq) (hsPkgs.deepseq)) ++ pkgs.lib.optional (_flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (_flags.quickcheck) (hsPkgs.QuickCheck);
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
            (hsPkgs.exinst)
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