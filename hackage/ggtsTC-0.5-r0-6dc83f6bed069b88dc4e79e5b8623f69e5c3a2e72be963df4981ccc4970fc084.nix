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
      specVersion = "1.4";
      identifier = { name = "ggtsTC"; version = "0.5"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 Wei Ke";
      maintainer = "wke@ipm.edu.mo";
      author = "Wei Ke";
      homepage = "http://a319-101.ipm.edu.mo/~wke/ggts/impl/";
      url = "";
      synopsis = "A type checker and runtime system of rCOS/g (impl. of ggts-FCS).";
      description = "A type checker and runtime system of rCOS/g\nfollowing the definitions in the /ggts-FCS/ article.\n\n* Title: A graph-based generic type system for object-oriented programs\n\n* Authors: Wei Ke, Zhiming Liu, Shuling Wang and Liang Zhao\n\n* Accepted by: Frontier of Computer Science\n\n* Year: 2012\n\nProgrammed by: Wei Ke\n\n(c) 2012 Wei Ke\n\nLicense:  GPL-3\n\nLicense file: <LICENSE>\n\nSource package download: <ggtsTC-0.5.tar.gz>\n\nrCOS/g grammar: <grammar>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "TC" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }