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
        name = "themplate";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2014 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/themplate/";
      url = "";
      synopsis = "Project templating tool";
      description = "Themplate is a tool to generate projects from templates. The templating language is described at <https://github.com/bennofs/themplate>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "themplate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.either)
            (hsPkgs.optparse-applicative)
            (hsPkgs.configurator)
            (hsPkgs.errors)
          ];
        };
      };
    };
  }