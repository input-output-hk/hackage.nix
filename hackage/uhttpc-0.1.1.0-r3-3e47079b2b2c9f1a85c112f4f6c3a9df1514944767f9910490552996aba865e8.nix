{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "uhttpc";
        version = "0.1.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "© 2013-2015 Herbert Valerio Riedel";
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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.deepseq)
        ];
      };
      exes = {
        "uhttpc-bench" = {
          depends = [
            (hsPkgs.uhttpc)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.deepseq)
            (hsPkgs.network)
            (hsPkgs.async)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }