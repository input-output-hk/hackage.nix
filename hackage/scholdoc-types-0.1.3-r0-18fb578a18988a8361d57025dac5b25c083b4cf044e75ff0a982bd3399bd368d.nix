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
      identifier = { name = "scholdoc-types"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2014 Tim T.Y. Lin, (c) 2006-2014 John MacFarlane";
      maintainer = "timtylin@gmail.com";
      author = "Tim T.Y. Lin";
      homepage = "http://scholdoc.scholarlymarkdown.com";
      url = "";
      synopsis = "Scholdoc fork of pandoc-types";
      description = "This package is a fork of @pandoc-types@ intended to\nsupport the development of Scholdoc. It includes some\nnon-trivial extensions to the Pandoc types and builder\nfunctions that are not easily implemented by depending on\nand extending the @pandoc-types@ modules.\n\nThis package is currently up to date with @pandoc-types@\nversion 1.12.4\n\nFor descriptions of the original @pandoc-types@ package,\nplease visit\n<http://hackage.haskell.org/package/pandoc-types>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."deepseq-generics" or (errorHandler.buildDepError "deepseq-generics"))
          ];
        buildable = true;
        };
      };
    }