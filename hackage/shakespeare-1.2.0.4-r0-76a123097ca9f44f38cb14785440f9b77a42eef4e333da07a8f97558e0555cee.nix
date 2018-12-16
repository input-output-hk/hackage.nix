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
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "shakespeare";
        version = "1.2.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/shakespearean-templates";
      url = "";
      synopsis = "A toolkit for making compile-time interpolated templates";
      description = "Shakespeare is a family of type-safe, efficient template languages. Shakespeare templates are expanded at compile-time, ensuring that all interpolated variables are in scope. Variables are interpolated according to their type through a typeclass.\n\nShakespeare templates can be used inline with a quasi-quoter or in an external file.\n\nNote there is no dependency on haskell-src-extras. Instead Shakespeare believes logic should stay out of templates and has its own minimal Haskell parser.\n\nPackages that use this: shakespeare-js, shakespeare-css, shakespeare-text, hamlet, and xml-hamlet\n\nPlease see the documentation at <http://www.yesodweb.com/book/shakespearean-templates> for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.process)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }