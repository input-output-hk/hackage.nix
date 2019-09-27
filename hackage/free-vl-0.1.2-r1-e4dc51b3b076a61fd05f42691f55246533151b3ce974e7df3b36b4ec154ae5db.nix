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
      identifier = { name = "free-vl"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Aaron Levin";
      maintainer = "Aaron Levin <aaron.michael.benjamin.levin@gmail.com>";
      author = "Aaron Levin";
      homepage = "http://github.com/aaronlevin/free-vl";
      url = "";
      synopsis = "van Laarhoven encoded Free Monad with Extensible Effects";
      description = "The van Laarhoven encoding of Free Monads, both the original and with extensible effects.\n\nFor more information on the van Laarhoven Free Monads, including examples,\nplease see the following blog posts:\n\nInitial formulation by Russell O'Connor: <http://r6.ca/blog/20140210T181244Z.html>\n\nAdding Extensible Effects by Aaron Levin: <http://aaronlevin.ca/post/136494428283/extensible-effects-in-the-van-laarhoven-free-monad>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."free-vl" or (buildDepError "free-vl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "free-vl-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."free-vl" or (buildDepError "free-vl"))
            ];
          buildable = true;
          };
        };
      };
    }