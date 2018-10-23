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
        name = "wordpass";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Michal J. Gajda";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mjgajda/wordpass";
      url = "";
      synopsis = "Dictionary-based password generator";
      description = "This script reads dict word lists and generates word-based passwords.\nNot unlike http://xkcd.com/936/.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wordpass" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.random-fu)
            (hsPkgs.random-source)
            (hsPkgs.vector)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }