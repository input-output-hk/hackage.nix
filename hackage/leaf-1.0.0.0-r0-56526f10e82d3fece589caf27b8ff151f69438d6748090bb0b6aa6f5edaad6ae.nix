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
      specVersion = "1.8";
      identifier = {
        name = "leaf";
        version = "1.0.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dimitri.sabadie@gmail.com";
      author = "Dimitri 'skp' Sabadie";
      homepage = "https://github.com/skypers/leaf";
      url = "";
      synopsis = "A simple portfolio generator";
      description = "leaf is a simple genererator with easy getting started and full support of Markdown.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "leaf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pandoc)
            (hsPkgs.blaze-html)
            (hsPkgs.split)
          ];
        };
      };
    };
  }