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
      identifier = { name = "knead"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/knead/";
      url = "";
      synopsis = "Repa array processing using LLVM JIT";
      description = "This library processes arrays like @Repa@ and @Accelerate@,\nbut it uses the just-in-time compiler of @LLVM@\nfor generating the machine code.\nThat is, you get very efficient vectorised code\nthat can be run without a GPU.\nYou do not need to care about inlining and strictness annotations,\nbecause the LLVM code is by default inlined and strict.\nThe package is the basis for an LLVM backend for the @Accelerate@ framework.\n\nHighlights:\n\n* Very flexible index handling,\neven more flexible than the one of 'Data.Array'.\nIt is much more expressive and type-safe than that of @repa@ and @array@.\n\n* Extensible element types, e.g. complex numbers.\n(Maybe this is also possible with accelerate, e.g. with RGB type.)\n\n* Every compilable program also runs.\nIn contrast to that, @accelerate@ may accept a program\nthat cannot be run by a particular backend, like @accelerate-cuda@.\n\nKnown deficiencies:\n\n* The functions do not check array bounds.\n(Of course, we can think about temporary bound checking\nfor debugging purposes.)\n\n* The package does not try to distribute work across multiple processors.\nIt is certainly simpler, more efficient and more reliable\nif you do that at a higher level.\n\nThe name of the package is inspired by the visualization of typical operations\nlike reshaping, collapsing a dimension and extruding another one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
          (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }