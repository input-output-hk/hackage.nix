{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test_export = false;
      test_coffee = false;
      test_roy = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shakespeare-js";
        version = "1.1.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/shakespearean-templates";
      url = "";
      synopsis = "Stick your haskell variables into javascript/coffeescript at compile time.";
      description = "Shakespeare is a template family for type-safe, efficient templates with simple variable interpolation . Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.\nIn this case, the variable type needs a ToJavascript instance.\n\nshakespeare-javascript is alson known as Julius, and passes through plain javascript\n\nThere is also a shakespeare version for CoffeeScript, TypeScript, and Roy, all languages that compile down to Javascript. They all expect you to have the appropriate compiler in your path.\n\nshakespeare originated from the hamlet template package.\nPlease see http://www.yesodweb.com/book/shakespearean-templates for a more thorough description and examples\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.shakespeare)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }