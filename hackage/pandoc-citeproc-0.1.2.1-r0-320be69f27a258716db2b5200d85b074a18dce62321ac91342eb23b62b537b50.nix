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
      small_base = true;
      bibutils = true;
      network = true;
      hexpat = true;
      embed_data_files = false;
      unicode_collation = false;
      };
    package = {
      specVersion = "1.12";
      identifier = { name = "pandoc-citeproc"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Andrea Rossato";
      homepage = "";
      url = "";
      synopsis = "Supports using pandoc with citeproc";
      description = "The pandoc-citeproc library exports functions for\nusing the citeproc system with pandoc.  It relies on\nciteproc-hs, a library for rendering\nbibliographic reference citations into a variety\nof styles using a macro language called Citation\nStyle Language (CSL). More details on CSL can be\nfound here: <http://citationstyles.org/>.\n\nCurrently this package includes a copy of the citeproc-hs\ncode. When citeproc-hs is updated to be compatible,\nthis package will simply depend on citeproc-hs.\n\nThis package also contains two executables: pandoc-citeproc,\nwhich works as a pandoc filter (pandoc >= 1.12), and\nbiblio2yaml, which converts bibliographic databases to\na yaml format suitable for inclusion in pandoc YAML\nmetadata.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          ] ++ (pkgs.lib).optional (flags.bibutils) (hsPkgs."hs-bibutils" or (errorHandler.buildDepError "hs-bibutils"))) ++ (pkgs.lib).optionals (flags.network) [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ]) ++ (if flags.hexpat
          then [ (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat")) ]
          else [
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            ])) ++ (if flags.unicode_collation
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
        buildable = true;
        };
      exes = {
        "pandoc-citeproc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-citeproc" or (errorHandler.buildDepError "pandoc-citeproc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        "biblio2yaml" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-citeproc" or (errorHandler.buildDepError "pandoc-citeproc"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-pandoc-citeproc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pandoc-citeproc" or (errorHandler.buildDepError "pandoc-citeproc"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }