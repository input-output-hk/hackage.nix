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
        name = "time-parsers";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/time-parsers#readme";
      url = "";
      synopsis = "Parsers for types in `time`.";
      description = "Parsers for types in `time` using 'parser' library.\n\nOriginally forked from aeson parsers.\n\nSee a lso <http://hackage.haskell.org/package/attoparsec-iso8601 attoparsec-iso-8601> package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsers)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
        ];
      };
      tests = {
        "date-parsers-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsers)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            (hsPkgs.time-parsers)
            (hsPkgs.attoparsec)
            (hsPkgs.bifunctors)
            (hsPkgs.parsec)
            (hsPkgs.parsers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }