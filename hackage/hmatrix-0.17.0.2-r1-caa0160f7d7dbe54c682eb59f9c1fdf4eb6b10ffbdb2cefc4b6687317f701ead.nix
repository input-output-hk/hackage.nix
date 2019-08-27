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
    flags = { openblas = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix"; version = "0.17.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alberto Ruiz";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Numeric Linear Algebra";
      description = "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.\n\nStandard interface: \"Numeric.LinearAlgebra\".\n\nSafer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".\n\nCode examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = (((pkgs.lib).optionals (system.isOsx) (if flags.openblas
          then [ (pkgs."openblas" or (sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (sysDepError "blas"))
            (pkgs."lapack" or (sysDepError "lapack"))
            ]) ++ (pkgs.lib).optionals (system.isFreebsd) ([
          (pkgs."gfortran" or (sysDepError "gfortran"))
          ] ++ (if flags.openblas
          then [ (pkgs."openblas" or (sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (sysDepError "blas"))
            (pkgs."lapack" or (sysDepError "lapack"))
            ]))) ++ (pkgs.lib).optionals (system.isWindows) (if flags.openblas
          then [ (pkgs."libopenblas" or (sysDepError "libopenblas")) ]
          else [
            (pkgs."blas" or (sysDepError "blas"))
            (pkgs."lapack" or (sysDepError "lapack"))
            ])) ++ (pkgs.lib).optionals (system.isLinux) (if flags.openblas
          then [ (pkgs."openblas" or (sysDepError "openblas")) ]
          else [
            (pkgs."blas" or (sysDepError "blas"))
            (pkgs."lapack" or (sysDepError "lapack"))
            ]);
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate" or (sysDepError "Accelerate"));
        };
      };
    }