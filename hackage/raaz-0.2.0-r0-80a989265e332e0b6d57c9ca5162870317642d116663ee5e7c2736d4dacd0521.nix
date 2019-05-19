{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      opt-native = false;
      vector128 = false;
      vector256 = false;
      vector512 = false;
      avx2 = false;
      linux-getrandom = false;
      liquidhaskell = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "raaz"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppk@cse.iitk.ac.in";
      author = "Piyush P Kurur";
      homepage = "http://github.com/raaz-crypto/raaz";
      url = "";
      synopsis = "The raaz cryptographic library.";
      description = "Raaz is a cryptographic library for Haskell. The library\nis designed with a special emphasis on using the type system of\nHaskell to eliminate a large set of vulnerabilities like buffer\noverflows, timing attacks etc. It also strives to achieve this\nsafety with no compromise on performance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.transformers);
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."Advapi32")
          (pkgs."Kernel32")
          ];
        build-tools = (pkgs.lib).optional (system.isWindows) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs));
        };
      exes = {
        "raaz" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.raaz)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.transformers);
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.transformers)
            (hsPkgs.raaz)
            (hsPkgs.vector)
            ];
          };
        "liquidspec" = {
          depends = [
            (hsPkgs.base)
            ] ++ (pkgs.lib).optionals (flags.liquidhaskell) [
            (hsPkgs.liquidhaskell)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            ];
          };
        };
      benchmarks = {
        "blaze-vs-write" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.raaz)
            ];
          };
        "bench-ciphers" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.raaz)
            ];
          };
        "primitives" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.pretty)
            (hsPkgs.raaz)
            ];
          };
        };
      };
    }