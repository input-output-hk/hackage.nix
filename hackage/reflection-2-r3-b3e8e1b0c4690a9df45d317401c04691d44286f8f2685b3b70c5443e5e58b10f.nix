{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      slow = false;
      template-haskell = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reflection";
        version = "2";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2013 Edward A. Kmett,\n2012 Elliott Hird,\n2004 Oleg Kiselyov and Chung-chieh Shan";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Elliott Hird, Oleg Kiselyov and Chung-chieh Shan";
      homepage = "http://github.com/ekmett/reflection";
      url = "";
      synopsis = "Reifies arbitrary terms into types that can be reflected back into terms";
      description = "This package addresses the /configuration problem/ which is\npropogating configurations that are available at run-time, allowing\nmultible configurations to coexist without resorting to mutable\nglobal variables or 'System.IO.Unsafe.unsafePerformIO'.\n\nThat package is an implementation of the ideas presented in the\npaper \\\"Functional Pearl: Implicit Configurations\\\" by Oleg Kiselyov\nand Chung-chieh Shan (<http://okmij.org/ftp/Haskell/tr-15-04.pdf original paper>).\nHowever, the API has been streamlined to improve performance.\n\nAustin Seipp's tutorial <https://www.fpcomplete.com/user/thoughtpolice/using-reflection Reflecting values to types and back> provides a summary of the\napproach taken by this library, along with more motivating examples.";
      buildType = "Simple";
    };
    components = {
      "reflection" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.tagged)) ++ pkgs.lib.optional (flags.template-haskell && (compiler.isGhc && true)) (hsPkgs.template-haskell);
      };
    };
  }