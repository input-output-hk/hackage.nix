{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usecereal = true; usebinary = true; usearbitrary = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-typenats"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy.groven@gmail.com";
      author = "Jeremy Groven";
      homepage = "https://github.com/tsuraan/bytestring-typenats";
      url = "";
      synopsis = "Bytestrings with typenat lengths";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.entropy)
          ] ++ (pkgs.lib).optional (flags.usecereal) (hsPkgs.cereal)) ++ (pkgs.lib).optional (flags.usebinary) (hsPkgs.binary)) ++ (pkgs.lib).optionals (flags.usearbitrary) [
          (hsPkgs.QuickCheck)
          (hsPkgs.blake2)
          (hsPkgs.cryptohash)
          ];
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.cryptohash)
            (hsPkgs.bytestring-typenats)
            ] ++ (pkgs.lib).optional (flags.usearbitrary) (hsPkgs.QuickCheck);
          };
        };
      benchmarks = {
        "benchmark-all" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.bytestring-typenats)
            (hsPkgs.QuickCheck)
            ] ++ (pkgs.lib).optional (flags.usearbitrary) (hsPkgs.QuickCheck);
          };
        };
      };
    }