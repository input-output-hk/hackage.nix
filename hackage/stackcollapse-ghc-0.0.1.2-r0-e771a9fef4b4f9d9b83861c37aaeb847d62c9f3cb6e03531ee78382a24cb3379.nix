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
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "stackcollapse-ghc"; version = "0.0.1.2"; };
      license = "GPL-3.0-only";
      copyright = "2020 Marcin Rzeźnicki";
      maintainer = "Marcin Rzeźnicki <marcin.rzeznicki@gmail.com>";
      author = "Marcin Rzeźnicki";
      homepage = "https://github.com/marcin-rzeznicki/stackcollapse-ghc";
      url = "";
      synopsis = "Program to fold GHC prof files into flamegraph input";
      description = "Program to fold GHC prof files into flamegraph input\nThe reasons why this package exists despite other packages with similar functionality (not including the NIH syndrome) boil down to:\n\n* it does only one thing (stack collapsing), so it's up to the user to install flamegraph scripts, pass options etc (in my eyes it's not a limitation, on the contrary),\n\n* output control: annotations (color profiles), extending traces from a configured set of modules with the source locations or toggling qualified names,\n\n* precise ticks and/or bytes with @-p@ reports,\n\n* it's fast\n\n= Basic usage\n\n== Visualize ticks\n\nIf you have a detailed prof file (@-P@ RTS option)\n\n> stackcollapse-ghc prof_file | flamegraph.pl --title 'Example' --subtitle 'Time' --countname ticks > path_to_svg\n\nIf you have a standard prof file (@-p@ RTS option)\n\n> stackcollapse-ghc -p prof_file | flamegraph.pl --title 'Example' --subtitle 'Time' --countname ticks > path_to_svg\n\n\n== Visualize allocations\n\nIf you have a detailed prof file (@-P@ RTS option)\n\n> stackcollapse-ghc --alloc prof_file | flamegraph.pl --title 'Example' --subtitle 'Bytes allocated' --countname bytes > path_to_svg\n\nIf you have a standard prof file (@-p@ RTS option)\n\n> stackcollapse-ghc --alloc -p prof_file | flamegraph.pl --title 'Example' --subtitle 'Bytes allocated' --countname bytes > path_to_svg\n\nSee the full [README](https://github.com/marcin-rzeznicki/stackcollapse-ghc) for details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "stackcollapse-ghc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          ];
          buildable = true;
        };
      };
      tests = {
        "stackcollapse-ghc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."rosezipper" or (errorHandler.buildDepError "rosezipper"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
      };
    };
  }