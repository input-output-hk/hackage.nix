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
      specVersion = "2.0";
      identifier = { name = "named-sop"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sam Schweigel <s.schweigel@gmail.com>";
      author = "Sam Schweigel";
      homepage = "https://github.com/sjsch/named-sop";
      url = "";
      synopsis = "Dependently-typed sums and products, tagged by field name";
      description = "Sums and Maps (products) indexed by a typelevel map of their field\n(or constructor) names and types.  They can be combined and split\nagain; their typelevel map is sorted to ensure that the end result\nis independent of the order you combine it in.\n\n\"Data.NamedSOP.Generic\" contains functions for automatically\nconverting between types with a Generic instance and named sums of\nproducts:\n\n> >>> data A = C { a :: Int, b :: Bool }\n> >>>          | D Int Bool deriving (Generic)\n> >>> :t genSum (C 3 True)\n> NSum\n>  '[ \"_C\" ':-> NMap '[ \"a\" ':-> Int, \"b\" ':-> Bool],\n>     \"_D\" ':-> NMap '[ \"_1\" ':-> Int, \"_2\" ':-> Bool]]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }