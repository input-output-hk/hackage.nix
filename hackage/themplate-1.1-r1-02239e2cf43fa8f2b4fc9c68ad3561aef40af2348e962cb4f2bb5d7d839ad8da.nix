{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "themplate";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2014 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/themplate/";
      url = "";
      synopsis = "themplate";
      description = "themplate";
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
            (hsPkgs.either)
            (hsPkgs.optparse-applicative)
            (hsPkgs.configurator)
            (hsPkgs.errors)
          ];
        };
      };
    };
  }