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
      deepseq = true;
      hashable = true;
      quickcheck = true;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "exinst";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2017";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Derive instances for your existential types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (((([
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.profunctors)
          (hsPkgs.singletons)
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs.aeson)) ++ pkgs.lib.optional (flags.bytes) (hsPkgs.bytes)) ++ pkgs.lib.optional (flags.deepseq) (hsPkgs.deepseq)) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs.QuickCheck);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytes)
            (hsPkgs.constraints)
            (hsPkgs.deepseq)
            (hsPkgs.exinst)
            (hsPkgs.generic-random)
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