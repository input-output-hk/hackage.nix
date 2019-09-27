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
      specVersion = "1.7";
      identifier = { name = "codo-notation"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dominic Orchard <dom.orchard@gmail.com>";
      author = "Dominic Orchard <dom.orchard@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A notation for comonads, analogous to the do-notation for monads.";
      description = "A notation for comonads, analogous to the do-notation for monads.\n\nRequires the @TemplateHaskell@ and @QuasiQuotes@ extensions.\n\nExample 1:\n\n@\n&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;\n&#x7b;-\\# LANGUAGE QuasiQuotes \\#-&#x7d;\n\nimport Control.Comonad\nimport Language.Haskell.Codo\n\nfoo :: (Comonad c, Num a) => c a -> a\nfoo = [codo| x => extract x + 1 |]\n@\n\nExample 2:\n\n@\nimport Data.Monoid\ninstance Monoid Double where\n&#x20;&#x20;&#x20;    mempty = 0.0\n&#x20;&#x20;&#x20;    mappend = (+)\n\ndifferentiate f = ((f 0.001) - f 0) / 0.001\n\nminima :: (Double -> Double) -> Bool\nminima = [codo| f => f'  <- differentiate f\n&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20; f'' <- differentiate f'\n&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20; (extract f' &#60; 0.001) && (extract f'' &#62; 0) |]\n@\n\nFurther explanation of the syntax can be found in the following (short) paper: <http://www.cl.cam.ac.uk/~dao29/drafts/codo-notation-orchard-ifl12.pdf> with a numer of examples.\n\nFurther examples can be found here: <https://github.com/dorchard/codo-notation>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          ];
        buildable = true;
        };
      };
    }