{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "processing"; version = "1.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Díaz (dhelta.diaz `at` gmail.com)";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Web graphic applications with processing.js.";
      description = "/Processing/ is a visual design programming language.\n/Processing.js/ is the sister project of Processing designed\nfor the web.\nThe Haskell /processing/ package is a web animation library\nwith /Processing.js/ as backend.\n\n/What is this for?/\n\nWith this library you are able to write scripts that, once\nexecuted in a browser, will execute interactive visual programs.\n\n/Where can I see a running example?/\n\nRunning examples are provided in the /examples/ directory.\nThese are some of the outputs:\n\n* Mill demo. Preview: <http://daniel-diaz.github.io/projects/processing/mill.html>.\nCode: <https://github.com/Daniel-Diaz/processing/blob/master/examples/mill.hs>.\n\n* Pacman demo. Preview: <http://daniel-diaz.github.io/projects/processing/pacman.html>.\nCode: <https://github.com/Daniel-Diaz/processing/blob/master/examples/pacman.hs>.\n\nThe code of the latter is included in the source distribution.\n\n/How do I learn to use it?/\n\nThe API reference of the library includes guidance and is complemented with\ncode examples. Look also to the /examples/ directory included in the source\ndistribution. It contains some fully working examples. Also online at:\n\n<https://github.com/Daniel-Diaz/processing/tree/master/examples>\n\nThe library provides different APIs (interfaces). Each one with a different\nphilosophy.\n\n* /Simple/ (\"Graphics.Web.Processing.Simple\"): An abstract interface, focusing\nin what you want to be displayed, but not how. The library will know how to\nwrite the processing code you need. However, you may lack some features that\nyou can find in other interfaces.\n\n* /Mid/ (\"Graphics.Web.Processing.Mid\"): More imperative feeling, with variables\nand commands. But also convenient and complete. This is the default interface,\nre-exported by \"Graphics.Web.Processing\".\n\n* /Basic/ (\"Graphics.Web.Processing.Basic\"): For people that like to do things\nby hand. The output processing code is predictable and you have great\ncontrol over it.\n\nThe module \"Graphics.Web.Processing.Html\" helps you to create the HTML document\nwhere you will display the animation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mainland-pretty)
          (hsPkgs.blaze-html)
          (hsPkgs.multiset)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.template-haskell)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
        };
      };
    }