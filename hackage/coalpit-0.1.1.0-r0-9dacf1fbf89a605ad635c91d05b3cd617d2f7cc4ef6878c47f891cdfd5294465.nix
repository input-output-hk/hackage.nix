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
        name = "coalpit";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "defanor@uberspace.net";
      author = "defanor";
      homepage = "";
      url = "";
      synopsis = "Command-line options and DSV parsing and printing";
      description = "This library generates parsers and printers for\ngiven data types, in the form of command-line\narguments or DSVs – so that they can be used to\nquickly get program interfaces via a shared\nlibrary, while being suitable for scripting and\nas user interfaces.";
      buildType = "Simple";
    };
    components = {
      "coalpit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.megaparsec)
          (hsPkgs.scientific)
          (hsPkgs.time)
          (hsPkgs.network-uri)
        ];
      };
      tests = {
        "test-coalpit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.coalpit)
            (hsPkgs.generic-random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-travis)
          ];
        };
      };
    };
  }