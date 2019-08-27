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
      identifier = { name = "final-pretty-printer"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2016-2017 David Darais, David Christiansen, and Weixi Ma";
      maintainer = "david@davidchristiansen.dk";
      author = "David Christiansen and David Darais and Weixi Ma";
      homepage = "";
      url = "";
      synopsis = "Extensible pretty printing with semantic annotations and proportional fonts";
      description = "This is the Final Pretty Printer, an extensible\nprettry printing library that supports semantic\nannotations and proportional-width fonts.\nThe library is extensible because it uses a\nfinal, rather than initial, encoding of pretty\nprinter documents - they are monadic programs,\nrather than a datatype.  This means it can be\nextended by monad transformers.\nSemantic annotations allow pretty printer\ndocuments to contain references to the data that\nthey represent, which can enable interactive output.\nProportional-width fonts are supported by\nallowing the measurement of widths to be\nperformed in some arbitrary monad, so IO can be\nused to look at the output of a font rendering library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          ];
        };
      };
    }