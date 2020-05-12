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
      identifier = { name = "bidirectionalization-combined"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "kztk@kb.ecei.tohoku.ac.jp";
      author = "Kazutaka Matsuda, Joachim Breitner";
      homepage = "http://www.kb.ecei.tohoku.ac.jp/~kztk/b18n-combined/desc.html";
      url = "";
      synopsis = "Prototype Implementation of Combining Syntatic and Semantic Bidirectionalization (ICFP'10)";
      description = "This is a prototype implementation of the idea presented\nin Combining Syntatic and Semantic Bidirectionalization\nby Janis Voigtlaender, Zhenjiang Hu, Kazutaka Matsuda\nand Meng Wang.\n\nThis package builds two executables to experiment with the system,\na command line program \"b18-combined\" and a CGI based web interface\n\"b18n-combined-cgi\". The latter is also available on\nhttp://www.kb.ecei.tohoku.ac.jp/~kztk/b18n-combined/";
      buildType = "Simple";
      };
    components = {
      exes = {
        "b18n-combined" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        "b18n-combined-cgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            ];
          buildable = true;
          };
        };
      };
    }