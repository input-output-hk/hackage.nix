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
    flags = { full-haskell-antiquotes = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-c-quote"; version = "0.12.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2013 Geoffrey Mainland\n(c) 2013 Manuel M. T. Chakravarty\n(c) 2013-2018 Drexel University";
      maintainer = "Geoffrey Mainland <mainland@drexel.edu>";
      author = "Geoffrey Mainland <mainland@drexel.edu>";
      homepage = "https://github.com/mainland/language-c-quote";
      url = "";
      synopsis = "C/CUDA/OpenCL/Objective-C quasiquoting library.";
      description = "This package provides a general parser for the C language, including most GCC\nextensions and some CUDA and OpenCL extensions as well as the entire Objective-C\nlanguage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exception-mtl" or (buildDepError "exception-mtl"))
          (hsPkgs."exception-transformers" or (buildDepError "exception-transformers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."srcloc" or (buildDepError "srcloc"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."symbol" or (buildDepError "symbol"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ] ++ (if flags.full-haskell-antiquotes
          then (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."safe" or (buildDepError "safe")) ++ [
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            ]
          else [
            (hsPkgs."haskell-exp-parser" or (buildDepError "haskell-exp-parser"))
            ]);
        build-tools = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.4") [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4") [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
          ];
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."language-c-quote" or (buildDepError "language-c-quote"))
            (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
            (hsPkgs."srcloc" or (buildDepError "srcloc"))
            (hsPkgs."symbol" or (buildDepError "symbol"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          };
        };
      };
    }