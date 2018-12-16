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
        name = "do-notation";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/do-notation#readme";
      url = "";
      synopsis = "Generalize do-notation to work on monads and indexed monads simultaneously.";
      description = "Please see the README on GitHub at <https://github.com/isovector/do-notation#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.indexed)
        ];
      };
      tests = {
        "do-notation-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.do-notation)
            (hsPkgs.indexed)
          ];
        };
      };
    };
  }