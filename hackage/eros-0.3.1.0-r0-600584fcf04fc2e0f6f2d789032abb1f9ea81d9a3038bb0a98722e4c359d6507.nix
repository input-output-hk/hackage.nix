{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "eros";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending.";
      maintainer = "Peter Harpending <pharpend2@gmail.com>";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A text censorship library.";
      description = "A Haskell library for censoring text, using\n<http://contentfilter.futuragts.com/phraselists/ DansGuardian phraselists>.\nI converted the phraselists into JSON. You can view the converted phraselists\n<https://github.com/pharpend/eros/tree/master/res/phraselists-pretty here>.\nThere exist compressed versions, for use within your code. You can see the\ncompressed versions\n<https://github.com/pharpend/eros/tree/master/res/phraselists-ugly here>.\nThe library is not very well tested (or really, tested at all), so I wouldn't\nrecommend using it for anything important just quite yet. I'm quickly working\ntowards a stable version, though!\nI recommend looking at the API documentation for Text.Eros if you want an idea\nof how to use the library. Hackage seems to be completely unable to build the\ndocumentation for Eros. For that reason, I publish the documentation\n<https://pharpend.github.io/eros-haddock/ on GitHub>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
        ];
      };
      exes = {
        "erosc" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.eros)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test-eros" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.eros)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }