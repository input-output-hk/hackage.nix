{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "unicode";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/unicode/";
      url = "";
      synopsis = "Construct and transform unicode characters";
      description = "The package contains functions for construction\nof various characters like:\n\n* block graphic elements\n\n* frame elements\n\n* fractions\n\n* subscript and superscript characters\n\nRelated packages:\n\n* @unicode-properties@: classifications such as lower case, graphical etc.\n\n* @rfc5051@: sorting of characters";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.base)
        ];
      };
      exes = {
        "visualize-unicode" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.unicode)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.unicode)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }