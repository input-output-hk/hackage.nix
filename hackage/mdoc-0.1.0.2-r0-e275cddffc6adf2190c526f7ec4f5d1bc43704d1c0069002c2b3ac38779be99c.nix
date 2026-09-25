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
      identifier = { name = "mdoc"; version = "0.1.0.2"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Pat Brisbin";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Parser and pretty-printer for the mdoc(7) language";
      description = "This library parses, represents, pretty-prints, or generates man-page content\nusing the [mdoc(7)](https://mandoc.bsd.lv/man/mdoc.7.html) language.\n\nTo parse a man-page and work with its data in a structured way,\n\n* See 'parseMdoc' and 'Mdoc'\n\nTo pretty-print parsed (or constructed) man-page data,\n\n* Use 'prettyMdoc' (or 'putDoc')\n\nTo generate a man-page from a supported parser library, check the appropriate\nintegration module,\n\n* @envparse@ -- \"Env.Mdoc\"\n* @opt-env-conf@ -- \"OptEnvConf.Mdoc\"\n* @optparse-applicative@ -- \"Options.Applicative.Mdoc\"\n\nAn example and screenshots are present in the project [README](#readme).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."autodocodec-schema" or (errorHandler.buildDepError "autodocodec-schema"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."generic-optics" or (errorHandler.buildDepError "generic-optics"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."opt-env-conf" or (errorHandler.buildDepError "opt-env-conf"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      exes = {
        "mdoc-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mdoc" or (errorHandler.buildDepError "mdoc"))
          ];
          buildable = true;
        };
      };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mdoc" or (errorHandler.buildDepError "mdoc"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."mdoc" or (errorHandler.buildDepError "mdoc"))
            (hsPkgs."opt-env-conf" or (errorHandler.buildDepError "opt-env-conf"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }