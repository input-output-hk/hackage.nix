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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "named-records"; version = "0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Flexible records with named fields.";
      description = "Flexible records with named fields.\n\n[@v0.2@] Default values with @record@.\n\n[@v0.2.1@] Requires @names-0.2.1@.\n\n[@v0.2.2@] TH @record@ definitions allow for\nmore types to be used in the definition.\n\nNamed records allow you to define und use records\nwith labeled fields. These records are first class\nobjects. Record fields are labeled by names, which\ncan basically be any type. However, the names package\nprovides global name types and some syntactic sugar\nto use them.\n\nHere is a complete walk-through, with Template Haskell\nsyntactic sugar.\n\nThis is how a typical example preamble looks like:\n\n> {-# LANGUAGE Haskell2010, TemplateHaskell #-}\n>\n> import qualified Data.Name\n> import Data.NamedRecord\n\nIn order to use names you need to declare them first\n(see the @names@ package for further details):\n\n> name \"firstName\"\n> name \"lastName\"\n\nThese are two records @Person@ and @User@:\n\n> record \"Person\"\n>     `has` \"firstName\" := ''String\n>     `has` \"lastName\"  := ''String\n>\n> record \"User\"\n>     `has` \"firstName\" := ''String\n>     `has` \"lastName\"  := ''String\n>     `has` \"loginName\" := ''String\n\nNote that these declarations create constructor\nfunctions @newPerson@ and @newUser@, as well as\ntype synonyms @Person@ and @User@ (use @-ddump-slices@\nto see what has been generated).\n\nHere are two instances of these recors:\n\n> julian = newPerson\n>    `set` firstName := \"Julian\"\n>    `set` lastName  := \"Fleischer\"\n>\n> alexander = newUser\n>    `set` firstName := \"Alexander\"\n>    `set` lastName  := \"Carnicero\"\n>    `set` loginName := \"alexander.carnicero\"\n\nWe can now create a @displayName@ function like\nthe following:\n\n> displayName obj =\n>     (obj `get` firstName) ++ \" \" ++\n>     (obj `get` lastName)\n\nNote that this function will accept any record\nthat has a @firstName@ and a @lastName@ field of\ntype @String@.\n\n>>> displayName julian\nJulian Fleischer\n\n>>> displayName alexander\nAlexander Carnicero\n\nAs mentioned above, records are first class citizens.\nThat means you can create them anywhere:\n\n>>> displayName (firstName := \"John\" :+ lastName := \"Doe\")\nJohn Doe";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."names" or (errorHandler.buildDepError "names"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }