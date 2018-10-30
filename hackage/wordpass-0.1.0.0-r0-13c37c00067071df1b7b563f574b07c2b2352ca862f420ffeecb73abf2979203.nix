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
        name = "wordpass";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mjgajda/wordpass";
      url = "";
      synopsis = "Dictionary-based password generator";
      description = "";
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