{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "partial-handler"; version = "1.0.2"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/partial-handler";
      url = "";
      synopsis = "A composable exception handler";
      description = "If you have ever had to compose an exception handler for exceptions of multiple types,\nyou know how frustraiting it can get.\nThis library approaches this issue by providing a composable exception handler type,\nwhich has instances of the standard classes.\n\nComposability means that you can define custom partial handlers and\nreuse them by composing other handlers from them.\n\nHere is an example of a composable partial handler,\nwhich only defines what to do in case of a ThreadKilled exception\n(the code uses the LambdaCase extension):\n\n>ignoreThreadKilled :: PartialHandler ()\n>ignoreThreadKilled =\n>  typed \$ \\case\n>    ThreadKilled -> Just \$ return ()\n>    _ -> Nothing\n\nHere's how you can construct a handler of type @SomeException -> IO ()@\nusing this library:\n\n>totalizeRethrowing \$\n>  ignoreThreadKilled <>\n>  onAlreadyExists (putStrLn \"Already exists\")\n\nand here is how you would do it traditionally (with the MultiWayIf extension):\n\n>\\e -> if\n>  | Just ThreadKilled <- fromException e ->\n>      return ()\n>  | Just e' <- fromException e, isAlreadyExistsError e' ->\n>      putStrLn \"Already exists\"\n>  | otherwise ->\n>      throwIO e\n\nPutting all the syntactic trickery to make it shorter aside,\nthis handler is a monolith block of code.\nUnlike with PartialHandler you can neither decompose it into simpler ones,\nnor compose it with other handlers to form a more complex one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }