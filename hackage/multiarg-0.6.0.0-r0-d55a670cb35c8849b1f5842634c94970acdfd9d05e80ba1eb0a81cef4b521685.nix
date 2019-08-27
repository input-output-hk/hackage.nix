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
    flags = { newbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "multiarg"; version = "0.6.0.0"; };
      license = "MIT";
      copyright = "2011-2012 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "https://github.com/massysett/multiarg";
      url = "";
      synopsis = "Combinators to build command line parsers";
      description = "multiarg is a parser combinator library to build command\nline parsers. With it you can easily create parsers with options\nthat take more than one option argument--for example, I created\nmultiarg due to the apparent lack of such ability amongst other\nparsers. Its basic design is loosely inspired by Parsec.\n\nProvides Parser, a monad you use to build parsers. This monad exposes\nmultiarg's full functionality. The library also has a simple,\npre-built parser built with the underlying combinators, which works\nfor many situtations and shields you from the underlying complexity\nif you don't need it.\n\nSee the documentation in the System.Console.MultiArg module for\ndetails.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ] ++ (if flags.newbase
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ]);
        };
      };
    }