{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ansi-wl-pprint"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Daan Leijen, Max Bolingbroke";
      homepage = "http://github.com/ekmett/ansi-wl-pprint";
      url = "";
      synopsis = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
      description = "This is a pretty printing library based on Wadler's paper [\"A Prettier Printer\"](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf).\nIt has been enhanced with support for ANSI terminal colored output using the [ansi-terminal](https://hackage.haskell.org/package/ansi-terminal) package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."prettyprinter-compat-ansi-wl-pprint" or (errorHandler.buildDepError "prettyprinter-compat-ansi-wl-pprint"))
          ];
        buildable = true;
        };
      exes = {
        "ansi-wl-pprint-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }