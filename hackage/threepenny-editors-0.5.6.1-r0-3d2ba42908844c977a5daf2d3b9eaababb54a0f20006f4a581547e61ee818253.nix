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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "threepenny-editors"; version = "0.5.6.1"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "https://github.com/pepeiborra/threepenny-editors";
      url = "";
      synopsis = "Composable algebraic editors";
      description = "This package provides a type class 'Editable' and combinators to\neasily put together form-like editors for algebraic datatypes.\n\nNOTE: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install threepenny-editors -fbuildExamples@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
          ];
        buildable = true;
        };
      exes = {
        "crud" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."threepenny-editors" or (errorHandler.buildDepError "threepenny-editors"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "crud2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."threepenny-editors" or (errorHandler.buildDepError "threepenny-editors"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."threepenny-editors" or (errorHandler.buildDepError "threepenny-editors"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "person" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optional (flags.buildexamples) (hsPkgs."threepenny-editors" or (errorHandler.buildDepError "threepenny-editors"));
          buildable = if flags.buildexamples then true else false;
          };
        "person2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            ] ++ (pkgs.lib).optional (flags.buildexamples) (hsPkgs."threepenny-editors" or (errorHandler.buildDepError "threepenny-editors"));
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }