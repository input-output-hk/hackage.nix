{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "shakespeare-css"; version = "0.10.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/templates";
      url = "";
      synopsis = "Stick your haskell variables into css at compile time.";
      description = "\nShakespeare is a template family for type-safe, efficient templates with simple variable interpolation . Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.\nIn this case, the variable type needs a ToCss instance.\n\nThis package contains 2 css template languages. The Cassius language uses whitespace to avoid the need for closing brackets and semi-colons. Lucius does not care about whitespace and is a strict superset of css. There are also some significant conveniences added for css.\n\nPlease see http://docs.yesodweb.com/book/templates for a more thorough description and examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.process)
          (hsPkgs.parsec)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.shakespeare-css)
            (hsPkgs.shakespeare)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }