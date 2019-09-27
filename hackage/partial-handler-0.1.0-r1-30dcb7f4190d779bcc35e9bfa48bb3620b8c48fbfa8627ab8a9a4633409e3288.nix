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
      identifier = { name = "partial-handler"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/partial-handler";
      url = "";
      synopsis = "A composable exception handler";
      description = "If you have ever had to compose an exception handler for exceptions of multiple types,\nyou know how frustraiting it can get.\nThis library approaches this issue by providing a composable exception handler type,\nwhich has a Monoid instance.\n\nComposability means that you can define custom partial handlers and\nreuse them by composing other handlers from them.\n\nHere is an example of a composable partial handler,\nwhich only defines what to do in case of a ThreadKilled exception\n(the code uses the LambdaCase extension):\n\n>ignoreThreadKilled :: PartialHandler ()\n>ignoreThreadKilled =\n>  typed \$ \\case\n>    ThreadKilled -> Just \$ return ()\n>    _ -> Nothing\n\nHere's how you can construct a handler of type @SomeException -> IO a@\nusing this library:\n\n>totalizeRethrowing \$\n>  ignoreThreadKilled <>\n>  onAlreadyExists (putStrLn \"Already exists\")\n\nand here is how you would do it traditionally (with the MultiWayIf extension):\n\n>\\e -> if\n>  | Just ThreadKilled <- fromException e ->\n>      return ()\n>  | Just e' <- fromException e, isAlreadyExistsError e' ->\n>      putStrLn \"Already exists\"\n>  | otherwise ->\n>      throwIO e\n\nPutting all the syntactic trickery to make it shorter aside,\nthis handler is a monolith block of code.\nUnlike with PartialHandler you can neither decompose it into simpler ones,\nor compose it with other handlers to form a more complex one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }