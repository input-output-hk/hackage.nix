{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hamlet"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Haml-like template files that are compile-time checked";
      description = "Hamlet gives you a type-safe tool for generating HTML code. It works via Quasi-Quoting, and generating extremely efficient output code. The syntax is white-space sensitive, and it helps you avoid cross-site scripting issues and 404 errors. Please see the documentation at <http://docs.yesodweb.com/book/hamlet/> for more details.\n\nAs a quick overview, here is a sample Hamlet template (note that, due to some issues with Haddock, I have replaced braces (&#123; and &#125;) with double-square-brackets ([[ and ]])):\n\n> !!!\n> <html\n>     <head\n>         <title>Hamlet Demo\n>     <body\n>         <h1>Information on #[[name person]]\n>         <p>#[[name person]] is #[[age person]] years old.\n>         <h2\n>             \$if isMarried person\n>                 Married\n>             \$else\n>                 Not married\n>         <ul\n>             \$forall child <- children person\n>                 <li>#[[child]]\n>         <p\n>             <a href=@[[page person]]>See the page.\n>         ^[[footer]]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.blaze-html)
          (hsPkgs.parsec)
          (hsPkgs.failure)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.json-types)
          (hsPkgs.json-enumerator)
          (hsPkgs.blaze-builder)
          ];
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
            ];
          };
        "hamlet6to7" = { depends = [ (hsPkgs.QuickCheck) ]; };
        };
      };
    }