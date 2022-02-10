{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
      description = "Hamlet gives you a type-safe tool for generating HTML code. It works via Quasi-Quoting, and generating extremely efficient output code. The syntax is white-space sensitive, and it helps you avoid cross-site scripting issues and 404 errors. Please see the documentation at <http://docs.yesodweb.com/book/hamlet/> for more details.\n\nAs a quick overview, here is a sample Hamlet template (note that, due to some issues with Haddock, I have replaced braces (&#123; and &#125;) with double-square-brackets ([[ and ]])):\n\n> !!!\n> <html\n>     <head\n>         <title>Hamlet Demo\n>     <body\n>         <h1>Information on #[[name person]]\n>         <p>#[[name person]] is #[[age person]] years old.\n>         <h2\n>             $if isMarried person\n>                 Married\n>             $else\n>                 Not married\n>         <ul\n>             $forall child <- children person\n>                 <li>#[[child]]\n>         <p\n>             <a href=@[[page person]]>See the page.\n>         ^[[footer]]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."json-types" or (errorHandler.buildDepError "json-types"))
          (hsPkgs."json-enumerator" or (errorHandler.buildDepError "json-enumerator"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = if flags.test then true else false;
          };
        "hamlet6to7" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }