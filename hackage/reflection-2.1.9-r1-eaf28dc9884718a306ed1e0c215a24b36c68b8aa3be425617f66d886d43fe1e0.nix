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
    flags = { slow = false; template-haskell = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "reflection"; version = "2.1.9"; };
      license = "BSD-3-Clause";
      copyright = "2009-2013 Edward A. Kmett,\n2012 Elliott Hird,\n2004 Oleg Kiselyov and Chung-chieh Shan";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Elliott Hird, Oleg Kiselyov and Chung-chieh Shan";
      homepage = "http://github.com/ekmett/reflection";
      url = "";
      synopsis = "Reifies arbitrary terms into types that can be reflected back into terms";
      description = "This package addresses the /configuration problem/ which is\npropagating configurations that are available at run-time, allowing\nmultiple configurations to coexist without resorting to mutable\nglobal variables or 'System.IO.Unsafe.unsafePerformIO'.\n\nThat package is an implementation of the ideas presented in the\npaper \\\"Functional Pearl: Implicit Configurations\\\" by Oleg Kiselyov\nand Chung-chieh Shan (<http://okmij.org/ftp/Haskell/tr-15-04.pdf original paper>).\nHowever, the API has been streamlined to improve performance.\n\nThere are a handful of tutorials on how to use this library:\n\n* Austin Seipp's tutorial <https://www.schoolofhaskell.com/user/thoughtpolice/using-reflection Reflecting values to types and back> provides a summary of the\napproach taken by this library, along with more motivating examples.\n\n* Arnaud Spiwack's tutorial <https://www.tweag.io/posts/2017-12-21-reflection-tutorial.html All about reflection> explains how to use this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.template-haskell && (compiler.isGhc && true)) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }