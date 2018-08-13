{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hamlet";
        version = "1.1.7.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/shakespearean-templates";
      url = "";
      synopsis = "Haml-like template files that are compile-time checked";
      description = "Hamlet gives you a type-safe tool for generating HTML code. It works via Quasi-Quoting, and generating extremely efficient output code. The syntax is white-space sensitive, and it helps you avoid cross-site scripting issues and 404 errors. Please see the documentation at <http://www.yesodweb.com/book/shakespearean-templates> for more details.\n\nHere is a quick overview of hamlet html. Due to haddock escaping issues, we can't properly show variable insertion, but we are still going to show some conditionals. Please see <http://www.yesodweb.com/book/shakespearean-templates> for a thorough description\n\n> !!!\n> <html>\n>     <head>\n>         <title>Hamlet Demo\n>     <body>\n>         <h1>Information on John Doe\n>         <h2>\n>             \$if isMarried person\n>                 Married\n>             \$else\n>                 Not married";
      buildType = "Simple";
    };
    components = {
      "hamlet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.shakespeare)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
          (hsPkgs.failure)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.process)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.hamlet)
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
          ];
        };
      };
    };
  }