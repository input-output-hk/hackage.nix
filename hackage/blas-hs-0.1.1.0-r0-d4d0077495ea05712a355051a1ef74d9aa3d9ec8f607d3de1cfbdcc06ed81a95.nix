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
    flags = {
      no-netlib = false;
      no-accelerate = false;
      openblas = false;
      mkl = false;
      cblas = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "blas-hs"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2014 Phil Ruffwind";
      maintainer = "rf@rufflewind.com";
      author = "Phil Ruffwind";
      homepage = "https://github.com/Rufflewind/blas-hs";
      url = "";
      synopsis = "Low-level Haskell bindings to Blas.";
      description = "This package provides a complete low-level binding to Blas via the foreign\nfunction interface, allowing Haskell programs to take advantage of optimized\nroutines for vector and matrix operations in Haskell.\n\nMore information can be found at the\n<https://github.com/Rufflewind/blas-hs repository>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          ];
        libs = (pkgs.lib).optional (flags.cblas) (pkgs."cblas" or (sysDepError "cblas")) ++ (if flags.mkl
          then [
            (pkgs."mkl_rt" or (sysDepError "mkl_rt"))
            (pkgs."pthread" or (sysDepError "pthread"))
            (pkgs."m" or (sysDepError "m"))
            ]
          else if flags.openblas
            then [ (pkgs."openblas" or (sysDepError "openblas")) ]
            else (pkgs.lib).optionals (!((system.isOsx || system.isOsx) && !flags.no-accelerate)) ((pkgs.lib).optional (!flags.no-netlib) (pkgs."blas" or (sysDepError "blas"))));
        frameworks = (pkgs.lib).optionals (!flags.mkl) ((pkgs.lib).optionals (!flags.openblas) ((pkgs.lib).optional ((system.isOsx || system.isOsx) && !flags.no-accelerate) (pkgs."Accelerate" or (sysDepError "Accelerate"))));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blas-hs" or (buildDepError "blas-hs"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }