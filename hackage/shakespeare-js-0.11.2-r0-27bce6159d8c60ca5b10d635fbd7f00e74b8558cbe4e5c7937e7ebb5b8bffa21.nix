{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test_export = false;
      test_coffee = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shakespeare-js";
        version = "0.11.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/templates";
      url = "";
      synopsis = "Stick your haskell variables into javascript/coffeescript at compile time.";
      description = "Shakespeare is a template family for type-safe, efficient templates with simple variable interpolation . Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.\nIn this case, the variable type needs a ToJavascript instance.\n\nThere is also shakespeare-coffeescript for coffeescript templates. Coffescript is a language that compiles down to javascript. It expects a coffeescript compiler in your path, and variable should be a ToCoffee instance. And we even have a Roy template for the adventorous FP addicts.\n\nPlease see http://docs.yesodweb.com/book/templates for a more thorough description and examples\n\nshakespeare-js was originally called julius, and shakespeare originated from the hamlet template package.";
      buildType = "Simple";
    };
    components = {
      "shakespeare-js" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.shakespeare-js)
            (hsPkgs.shakespeare)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }