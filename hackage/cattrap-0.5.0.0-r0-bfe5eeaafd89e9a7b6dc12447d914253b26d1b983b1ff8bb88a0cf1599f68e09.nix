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
      identifier = { name = "cattrap"; version = "0.5.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Adrian Cochrane 2023";
      maintainer = "~alcinnz/cattrap@todo.argonaut-constellation.org";
      author = "Adrian Cochrane";
      homepage = "https://argonaut-constellation.org/";
      url = "";
      synopsis = "Lays out boxes according to the CSS Box Model.";
      description = "Computes where to place e.g. images, paragraphs, containers, tables, etc onscreen given desired amounts of whitespace.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          (hsPkgs."fontconfig-pure" or (errorHandler.buildDepError "fontconfig-pure"))
          (hsPkgs."harfbuzz-pure" or (errorHandler.buildDepError "harfbuzz-pure"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."balkon" or (errorHandler.buildDepError "balkon"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."data-array-byte" or (errorHandler.buildDepError "data-array-byte"))
          ];
        buildable = true;
        };
      exes = {
        "cattrap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cattrap" or (errorHandler.buildDepError "cattrap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            ];
          buildable = true;
          };
        "cattrap-argonaut" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cattrap" or (errorHandler.buildDepError "cattrap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
            (hsPkgs."stylist" or (errorHandler.buildDepError "stylist"))
            (hsPkgs."hurl-xml" or (errorHandler.buildDepError "hurl-xml"))
            (hsPkgs."hurl" or (errorHandler.buildDepError "hurl"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."xml-conduit-stylist" or (errorHandler.buildDepError "xml-conduit-stylist"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fontconfig-pure" or (errorHandler.buildDepError "fontconfig-pure"))
            ];
          buildable = true;
          };
        "cattrap-stylist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cattrap" or (errorHandler.buildDepError "cattrap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
            (hsPkgs."stylist" or (errorHandler.buildDepError "stylist"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."html-conduit" or (errorHandler.buildDepError "html-conduit"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."xml-conduit-stylist" or (errorHandler.buildDepError "xml-conduit-stylist"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fontconfig-pure" or (errorHandler.buildDepError "fontconfig-pure"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-cattrap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cattrap" or (errorHandler.buildDepError "cattrap"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."balkon" or (errorHandler.buildDepError "balkon"))
            (hsPkgs."harfbuzz-pure" or (errorHandler.buildDepError "harfbuzz-pure"))
            ];
          buildable = true;
          };
        };
      };
    }