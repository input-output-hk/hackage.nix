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
      specVersion = "1.10";
      identifier = { name = "xml-types"; version = "0.3.8"; };
      license = "MIT";
      copyright = "";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://git.singpolyma.net/xml-types-haskell";
      url = "";
      synopsis = "Basic types for representing XML";
      description = "Basic types for representing XML.\n\nThe idea is to have a full set of appropriate types, which various XML\nlibraries can share. Instead of having equivalent-but-incompatible types\nfor every binding, parser, or client, they all share the same types can\ncan thus interoperate easily.\n\nThis library contains complete types for most parts of an XML document,\nincluding the prologue, node tree, and doctype. Some basic combinators\nare included for common tasks, including traversing the node tree and\nfiltering children.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }