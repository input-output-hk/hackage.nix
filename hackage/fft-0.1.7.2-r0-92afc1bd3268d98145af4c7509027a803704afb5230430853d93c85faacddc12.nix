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
    flags = { splitbase = true; base4 = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "fft"; version = "0.1.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jed Brown <jed@59A2.org>, Henning Thielemann <fft@henning-thielemann.de>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "Bindings to the FFTW library.";
      description = "Bindings to the FFTW library.\n\nProvides high performance discrete fourier transforms in\narbitrary dimensions.  Include transforms of complex data,\nreal data, and real to real transforms.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."carray" or (buildDepError "carray"))
            (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
            (hsPkgs."ix-shapable" or (buildDepError "ix-shapable"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."carray" or (buildDepError "carray"))
            (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
            (hsPkgs."ix-shapable" or (buildDepError "ix-shapable"))
            ]) ++ (if flags.base4
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        pkgconfig = [ (pkgconfPkgs."fftw3" or (pkgConfDepError "fftw3")) ];
        };
      exes = {
        "test-fft" = {
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"));
          pkgconfig = [ (pkgconfPkgs."fftw3" or (pkgConfDepError "fftw3")) ];
          };
        };
      };
    }