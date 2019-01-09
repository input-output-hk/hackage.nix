{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "turtle-options"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2016 Elie Genard";
      maintainer = "elaye@users.noreply.github.com";
      author = "Elie Genard";
      homepage = "https://github.com/elaye/turtle-options#readme";
      url = "";
      synopsis = "Collection of command line options and parsers for these options";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.optional-args)
          (hsPkgs.turtle)
          ];
        };
      exes = {
        "example" = {
          depends = [ (hsPkgs.base) (hsPkgs.turtle) (hsPkgs.turtle-options) ];
          };
        };
      tests = {
        "turtle-options-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.turtle-options)
            (hsPkgs.HUnit)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }