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
    flags = { buildexamples = false; validate = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Hoed"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2015 Maarten Faddegon";
      maintainer = "hoed@maartenfaddegon.nl";
      author = "Maarten Faddegon";
      homepage = "http://maartenfaddegon.nl";
      url = "";
      synopsis = "Lighweight algorithmic debugging based on observing intermediate values and the cost centre stack.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."libgraph" or (errorHandler.buildDepError "libgraph"))
          (hsPkgs."RBTree" or (errorHandler.buildDepError "RBTree"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "hoed-examples-Foldl" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-HeadOnEmpty1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-HeadOnEmpty2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-IndirectRecursion" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Pretty" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Example1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Example3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Example4" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Insort1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Insort2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer4" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer5" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Hashmap" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Responsibility" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-TightRope1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-TightRope2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-TightRope3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-AskName" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-tests-DoublingServer" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-Insort2" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-Example1" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-Example3" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-Example4" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-IndirectRecursion" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        };
      };
    }