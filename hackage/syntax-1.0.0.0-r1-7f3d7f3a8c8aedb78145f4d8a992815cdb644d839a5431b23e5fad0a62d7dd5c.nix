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
      identifier = { name = "syntax"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Reversible parsing and pretty-printing.";
      description = "UPDATE: I have a lot of work now and so I haven't updated the library in a while. However once I get some free time I will probably rewrite it with a new, cleaner design (focused more on adjoints then isomorphisms). Consider this package very experimental :)\n\n\"syntax\" allows you to write a single syntax description and instantiate is both as a parser and a pretty printer.\n\nSyntax descriptions are written in applicative or arrow style. The library uses a custom typeclass hierarchy, provided\nby the \"semi-iso\" package. Most of the time you will be using operators like '/\$/', '/*/' and '/+/' (= '<|>'), just\nlike parser combinators. When more power is needed - e.g. when the syntax depends on the parsed or printed value -\nyou turn to arrows.\n\nSemi-isomorphisms from \"semi-iso\" are the basic building block of syntax descriptions. I recommend reading\nthe hackage page of \"semi-iso\" first, as it contains much more information.\n\nOnce you write a syntax description (polymorphic in the syntax category) you can instantiate it both as a parser or as\na pretty-printer. The library \"syntax-attoparsec\" gives you the ability to extract an Attoparsec parser. Pretty-printing\nis implemented by the \"syntax-printer\" library, which uses Text and ByteString builders. (Note that formatting is handled\nby \"syntax\" itself, not by the printer library)\n\nAdvanced formatting and parsing (for example indentation, haskell layout rule) is implemented as category transformers\n(similar to monad transformers). Currently only simple indentation is implemented (in \"Data.Syntax.Indent\") - basically\na reader category transformer that tracks current indentation level. I plan on implementing Haskell layout rule in the\nfuture.\n\nThe library can work with both text and binary data. Alas, there are no binary combinators implemented yet.\n\nEXAMPLES! See @syntax-example@ and @syntax-example-json@ for examples.\n\n* \"syntax-example\" implements a simple lambda calculus.\n\n* \"syntax-example-json\" implements a json parser and pretty printer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."semi-iso" or (buildDepError "semi-iso"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      };
    }