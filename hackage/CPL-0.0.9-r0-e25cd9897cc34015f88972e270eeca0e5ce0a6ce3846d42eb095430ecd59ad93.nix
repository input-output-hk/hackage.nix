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
    flags = { readline = true; haskeline = true; linuxstatic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "CPL"; version = "0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "https://github.com/msakai/cpl";
      url = "";
      synopsis = "An interpreter of Hagino's Categorical Programming Language (CPL).";
      description = "CPL is a functional programming language based on category\ntheory. Data types are declared in a categorical manner by\nadjunctions. Data types that can be handled include the terminal\nobject, the initial object, the binary product functor, the binary\ncoproduct functor, the exponential functor, the natural number object,\nthe functor for finite lists, and the functor for infinite lists.\nEach data type is declared with its basic operations or\nmorphisms. Programs consist of these morphisms, and execution of\nprograms is the reduction of elements (i.e. special morphisms) to\ntheir canonical form.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cpl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ] ++ (if flags.readline
            then [ (hsPkgs."readline" or (buildDepError "readline")) ]
            else (pkgs.lib).optional (flags.haskeline) (hsPkgs."haskeline" or (buildDepError "haskeline")));
          };
        };
      };
    }