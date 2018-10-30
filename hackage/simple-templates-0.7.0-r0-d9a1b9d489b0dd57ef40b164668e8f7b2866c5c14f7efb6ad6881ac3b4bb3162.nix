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
        name = "simple-templates";
        version = "0.7.0";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Aryeh Levy";
      homepage = "http://simple.cx";
      url = "";
      synopsis = "A basic template language for the Simple web framework";
      description = "A basic template language for the Simple web framework. The language supports\nvariable substitution, function invokation, loops and conditionals.\n\n\"Web.Simple.Templates\" documents how to integrate into an app, while\n\"Web.Simple.Templates.Language\" documents the templating language syntax\nand semantics.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-simple-templates" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.simple-templates)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }