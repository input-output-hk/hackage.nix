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
      specVersion = "1.6";
      identifier = { name = "vector-fftw"; version = "0.1.3.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) Judah Jacobson, 2010";
      maintainer = "Ben Gamari <ben@smart-cactus.org>";
      author = "Judah Jacobson";
      homepage = "http://hackage.haskell.org/package/vector-fftw";
      url = "";
      synopsis = "A binding to the fftw library for one-dimensional vectors.";
      description = "This package provides bindings to the fftw library for one-dimensional vectors.\nIt provides both high-level functions and more low-level manipulation of fftw plans.\n\nWe provide three different modules which wrap fftw's operations:\n\n- \"Numeric.FFT.Vector.Unnormalized\" contains the raw transforms;\n\n- \"Numeric.FFT.Vector.Invertible\" scales the backwards transforms to be true inverses;\n\n- \"Numeric.FFT.Vector.Unitary\" additionally scales all transforms to preserve the L2 (sum-of-squares) norm of the\ninput.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          ];
        libs = if system.isWindows
          then [ (pkgs."fftw3-3" or (sysDepError "fftw3-3")) ]
          else [ (pkgs."fftw3" or (sysDepError "fftw3")) ];
        buildable = true;
        };
      };
    }