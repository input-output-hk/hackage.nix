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
      specVersion = "1.18";
      identifier = { name = "polyparse"; version = "1.13.1"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2006-2016 Malcolm Wallace";
      maintainer = "Andreas Abel";
      author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      homepage = "";
      url = "";
      synopsis = "A variety of alternative parser combinator libraries.";
      description = "A variety of alternative parser combinator libraries, including\nthe original HuttonMeijer set.  The Poly sets have features like\ngood error reporting, arbitrary token type, running state, lazy\nparsing, and so on.  Finally, Text.Parse is a proposed\nreplacement for the standard Read class, for better\ndeserialisation of Haskell values from Strings.\n\nOld homepage: <https://archives.haskell.org/projects.haskell.org/polyparse/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && true) [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }