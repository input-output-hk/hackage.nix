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
      identifier = { name = "ngrams-loader"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2014 Yorick Laupa";
      maintainer = "Yorick Laupa <yo.eight@gmail.com>";
      author = "Yorick Laupa";
      homepage = "http://github.com/YoEight/ngrams-loader";
      url = "";
      synopsis = "Ngrams loader based on http://www.ngrams.info format";
      description = "Ngrams loader based on http://www.ngrams.info format";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."machines" or (buildDepError "machines"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "ngrams-loader" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ngrams-loader" or (buildDepError "ngrams-loader"))
            (hsPkgs."parseargs" or (buildDepError "parseargs"))
            ];
          };
        };
      };
    }