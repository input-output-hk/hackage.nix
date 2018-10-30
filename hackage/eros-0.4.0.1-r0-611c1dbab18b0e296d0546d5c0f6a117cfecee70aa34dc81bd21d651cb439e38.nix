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
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending.";
      maintainer = "Peter Harpending <pharpend2@gmail.com>";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A text censorship library.";
      description = "A Haskell library for censoring text, using\n<http://contentfilter.futuragts.com/phraselists/ DansGuardian phraselists>.\nI converted the phraselists into JSON. You can view the converted phraselists\n<https://github.com/pharpend/eros/tree/master/res/phraselists-pretty here>.\nI recommend looking at the API documentation for 'Text.Eros' if you want an\nidea of how to use the library. I publish the documentation\n<https://pharpend.github.io/eros-haddock/ on GitHub>.";
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
    };
  }