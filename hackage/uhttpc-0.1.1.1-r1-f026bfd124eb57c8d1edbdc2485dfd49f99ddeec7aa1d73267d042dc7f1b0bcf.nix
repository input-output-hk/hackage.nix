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
    flags = { network--ge-3_0_0 = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "uhttpc"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "© 2013-2019 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/uhttpc";
      url = "";
      synopsis = "Minimal HTTP client library optimized for benchmarking";
      description = "@uhttpc@ contains a simple low-level and lightweight Haskell\n<https://tools.ietf.org/html/rfc2616 HTTP 1.1>\nlibrary optimized for providing the bare minimum required for HTTP\nbenchmarking purposes and allowing for time measurements of the\nindividual phases of the HTTP transaction.\n\nThis package also provides the command-line tool @uhttpc-bench@ as an\nusage example which mimics the popular\n<https://github.com/lighttpd/weighttp weighttp> HTTP benchmarking tool's\nCLI.\n\nWARNING: @uhttpc@ was originally developed for evaluating the new\n<http://haskell.cs.yale.edu/wp-content/uploads/2013/08/hask035-voellmy.pdf \\\"Mio\\\" parallel I/O manager>\nintroduced with GHC 7.8 and provide a base-line for HTTP client libraries.\nHowever, this is not a fully RFC compliant HTTP client library and\ntherefore ought not be used as a general purpose HTTP\nimplementation; Use libraries such as\n<http://hackage.haskell.org/package/http-streams http-streams>\ninstead which aim toward full RFC compliance as well as having good\nperformance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (pkgs.lib).optionals (flags.network--ge-3_0_0) [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
          ];
        buildable = true;
        };
      exes = {
        "uhttpc-bench" = {
          depends = [
            (hsPkgs."uhttpc" or (errorHandler.buildDepError "uhttpc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }