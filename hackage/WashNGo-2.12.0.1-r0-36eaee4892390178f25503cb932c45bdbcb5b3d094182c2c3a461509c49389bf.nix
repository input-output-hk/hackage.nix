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
      specVersion = "1.2";
      identifier = { name = "WashNGo"; version = "2.12.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2001-2006, Peter Thiemann";
      maintainer = "Marc Weber <marco-oweber@gmx.de>";
      author = "Peter Thiemann <thiemann@informatik.uni-freiburg.de>";
      homepage = "http://www.informatik.uni-freiburg.de/~thiemann/haskell/WASH/";
      url = "";
      synopsis = "WASH is a family of EDSLs for programming Web applications in Haskell.";
      description = "WASH is a family of embedded domain specific languages (EDSL) for programming Web applications in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "wash2hs" = {};
        "washc" = {
          depends = [
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }