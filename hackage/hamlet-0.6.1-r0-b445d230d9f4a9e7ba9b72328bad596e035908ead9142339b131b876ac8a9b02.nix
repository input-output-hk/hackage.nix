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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hamlet"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Haml-like template files that are compile-time checked";
      description = "Hamlet gives you a type-safe tool for generating HTML code. It works via Quasi-Quoting, and generating extremely efficient output code. The syntax is white-space sensitive, and it helps you avoid cross-site scripting issues and 404 errors. Please see the documentation at <http://docs.yesodweb.com/hamlet/> for more details.\n\nAs a quick overview, here is a sample Hamlet template:\n\n> !!!\n> %html\n>     %head\n>         %title Hamlet Demo\n>     %body\n>         %h1 Information on $name.person$\n>         %p $*name.person$ is $age.person$ years old.\n>         %h2\n>             $if isMarried.person\n>                 Married\n>             $else\n>                 Not married\n>         %ul\n>             $forall children.person child\n>                 %li $child$\n>         %p\n>             %a!href=@page.person@ See the page.\n>         ^footer^";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }