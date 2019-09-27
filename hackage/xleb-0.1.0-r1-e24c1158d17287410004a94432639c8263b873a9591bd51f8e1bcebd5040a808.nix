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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "xleb"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "©2017 Getty Ritter";
      maintainer = "Getty Ritter <xleb@infinitenegativeutility.com>";
      author = "Getty Ritter <xleb@infinitenegativeutility.com>";
      homepage = "https://github.com/aisamanra/xleb";
      url = "";
      synopsis = "A simple monadic language for parsing XML structures.";
      description = "A simple monadic language designed for easily describing and parsing\nXML structures.\n\nThe library in general has a small surface area and should be easy\nto pick up just given the Haddock documentation, but slightly more\ninvolved documentation can be found at\n<https://github.com/aisamanra/xleb the Xleb github page> along with\n<https://github.com/aisamanra/xleb/tree/master/examples some examples>.\n\nPlease report bugs and suggest features at\n<https://github.com/aisamanra/xleb/issues the Xleb issue tracker>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "atom" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xleb" or (buildDepError "xleb"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }