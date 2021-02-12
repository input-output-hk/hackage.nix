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
    flags = {
      bibutils = true;
      embed_data_files = false;
      unicode_collation = false;
      test_citeproc = false;
      debug = false;
      };
    package = {
      specVersion = "1.12";
      identifier = { name = "pandoc-citeproc"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Andrea Rossato";
      homepage = "";
      url = "";
      synopsis = "Supports using pandoc with citeproc";
      description = "The pandoc-citeproc library exports functions for\nusing the citeproc system with pandoc.  It relies on\nciteproc-hs, a library for rendering\nbibliographic reference citations into a variety\nof styles using a macro language called Citation\nStyle Language (CSL). More details on CSL can be\nfound here: <http://citationstyles.org/>.\n\nCurrently this package includes a heavily revised\ncopy of the citeproc-hs code. When citeproc-hs is\nupdated to be compatible, this package will simply\ndepend on citeproc-hs.\n\nThis package also contains an executable: pandoc-citeproc,\nwhich works as a pandoc filter, and\nalso has a mode for converting bibliographic databases\na YAML format suitable for inclusion in pandoc YAML\nmetadata.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (flags.debug) (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))) ++ (pkgs.lib).optional (flags.bibutils) (hsPkgs."hs-bibutils" or (errorHandler.buildDepError "hs-bibutils"))) ++ (if flags.unicode_collation
          then [
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            ]
          else [
            (hsPkgs."rfc5051" or (errorHandler.buildDepError "rfc5051"))
            ])) ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        build-tools = (pkgs.lib).optional (flags.embed_data_files) (hsPkgs.buildPackages.hsb2hs.components.exes.hsb2hs or (pkgs.buildPackages.hsb2hs or (errorHandler.buildToolDepError "hsb2hs:hsb2hs")));
        buildable = true;
        };
      exes = {
        "pandoc-citeproc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-citeproc" or (errorHandler.buildDepError "pandoc-citeproc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "test-citeproc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pandoc-citeproc" or (errorHandler.buildDepError "pandoc-citeproc"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if flags.test_citeproc then true else false;
          };
        };
      tests = {
        "test-pandoc-citeproc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pandoc-citeproc" or (errorHandler.buildDepError "pandoc-citeproc"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }