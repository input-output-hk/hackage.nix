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
      specVersion = "1.8";
      identifier = { name = "yesod-text-markdown"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miffoljud@gmail.com";
      author = "Arash Rouhani";
      homepage = "";
      url = "";
      synopsis = "Yesod support for Text.Markdown.";
      description = "The contents of this package is t\nuse Text.Markdown in a typical yesod project, that is,\nthis module also contains instances related to\npersistence, even though it isn't tightly coupled to\nyesod.\n\nThis package is different from the yesod-markdown package\nwhich uses the pandoc renderer for markdown. The main\nadvantages of having Text.Markdown as underlying renderer\nis the much smaller dependencies and the permissiver\nlicense.  See\n<https://github.com/pbrisbin/yesod-markdown> and\n<https://github.com/snoyberg/markdown>.\n\nThis package intentionally tries to be like\nyesod-markdown, so switching between the markdown backends\nshould be easy.\n\nIf you wonder why the haddocks only show a few exports,\nit's because it doesn't show exporting of instances which\nis most of what this package is about.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."markdown" or (buildDepError "markdown"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."hamlet" or (buildDepError "hamlet"))
          ];
        };
      };
    }