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
      specVersion = "1.14";
      identifier = { name = "accelerate-fourier"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/accelerate-fourier/";
      url = "";
      synopsis = "Fast Fourier transform and convolution using the Accelerate framework";
      description = "Fast Fourier transform and convolution via the @accelerate@ package.\nIt uses many of the common tricks to achieve optimal speed\nfor every size of the data set,\nbut it does not contain low-level optimizations.\n\n* For CUDA specific optimizations please see\n@cufft@ and @accelerate-cufft@ and @accelerate-fft@ packages.\n\n* For CPU specific optimizations cf. @accelerate-fftw@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."accelerate-arithmetic" or (buildDepError "accelerate-arithmetic"))
          (hsPkgs."accelerate-utility" or (buildDepError "accelerate-utility"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."accelerate-fourier" or (buildDepError "accelerate-fourier"))
            (hsPkgs."accelerate-arithmetic" or (buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (buildDepError "accelerate-utility"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."accelerate-fourier" or (buildDepError "accelerate-fourier"))
            (hsPkgs."accelerate-arithmetic" or (buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (buildDepError "accelerate-utility"))
            (hsPkgs."accelerate-cuda" or (buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }