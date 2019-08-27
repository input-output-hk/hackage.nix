let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sdr"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/sdr";
      url = "";
      synopsis = "A software defined radio library";
      description = "Write software defined radio applications in Haskell.\n\nFeatures:\n\n* Signal processing blocks can be chained together using the <https://hackage.haskell.org/package/pipes Pipes> library\n\n* Zero copy design\n\n* Signal processing functions are implemented in both Haskell and C (with SIMD acceleration)\n\n* Can FIR filter, decimate and resample\n\n* Helper functions for FIR filter design using window functions and plotting of the frequency response\n\n* FFTs using <http://www.fftw.org/ FFTW>\n\n* Line and waterfall plots using OpenGL\n\n* FM demodulation\n\n* PulseAudio sound sink\n\n* <http://sdr.osmocom.org/trac/wiki/rtl-sdr rtl-sdr> based radio source supported and other sources are easily added\n\nSee <https://github.com/adamwalker/sdr> for more features and screenshots.\n\nA collection of simple apps that use this library can be found <https://github.com/adamwalker/sdr-apps here>. These include an FM radio receiver, an OpenGL waterfall plotter and an AM radio receiver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."fftwRaw" or (buildDepError "fftwRaw"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."pulse-simple" or (buildDepError "pulse-simple"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."rtlsdr" or (buildDepError "rtlsdr"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."dynamic-graph" or (buildDepError "dynamic-graph"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."pango" or (buildDepError "pango"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."Decimal" or (buildDepError "Decimal"))
          (hsPkgs."Chart" or (buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."sdr" or (buildDepError "sdr"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."sdr" or (buildDepError "sdr"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
            ];
          };
        };
      };
    }