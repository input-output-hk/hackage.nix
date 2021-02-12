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
      curl = false;
      pkgconfig = false;
      static = false;
      terminfo = true;
      threaded = true;
      executable = true;
      rts = false;
      warn-as-error = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "darcs"; version = "2.16.1"; };
      license = "GPL-2.0-or-later";
      copyright = "";
      maintainer = "<darcs-devel@darcs.net>";
      author = "David Roundy <droundy@darcs.net>, <darcs-devel@darcs.net>";
      homepage = "http://darcs.net/";
      url = "";
      synopsis = "a distributed, interactive, smart revision control system";
      description = "Darcs is a free, open source revision control\nsystem. It is:\n\n* Distributed: Darcs was one of the first revision control\nsystems in which every user has access to the full command\nset, removing boundaries between server and client or\ncommitter and non-committers.\n\n* Interactive: Darcs is easy to learn and efficient to use\nbecause it asks you questions in response to simple\ncommands, giving you choices in your work flow. You can\nchoose to record one change in a file, while ignoring\nanother. As you update from upstream, you can review each\npatch, picking and choosing which patches are appropriate.\n\n* Smart: Darcs is different from most revision control\nsystems in that it is based on the notion of change (or\npatch), rather than version. An underlying algebra of\npatches determines whether changes can be re-ordered. The\nlaws of this algebra guarantee that the result of merging\ndepends only on the final set of patches applied in a\nrepository and not on their order.\n\n* Simple: As a consequence, Darcs offers a conceptually\nsimpler view of the state of a repository: it is given by\nthe set of patches it contains. Pulling and pushing\npatches merely transfers them from one set to another. So\ncalled \"cherry-picking\" is the default mode of operation,\nand it fully preserves the identity of patches.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.setupDepError "process")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-compat-tdfa" or (errorHandler.buildDepError "regex-compat-tdfa"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
        libs = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optional (!flags.pkgconfig) (pkgs."curl" or (errorHandler.sysDepError "curl")));
        pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."libcurl" or (errorHandler.pkgConfDepError "libcurl")));
        buildable = true;
        };
      exes = {
        "darcs" = {
          depends = [
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if !flags.executable then false else true;
          };
        };
      tests = {
        "darcs-test" = {
          depends = [
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."FindBin" or (errorHandler.buildDepError "FindBin"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-leancheck" or (errorHandler.buildDepError "test-framework-leancheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          build-tools = [
            (hsPkgs.buildPackages.darcs.components.exes.darcs or (pkgs.buildPackages.darcs or (errorHandler.buildToolDepError "darcs:darcs")))
            ];
          buildable = true;
          };
        };
      };
    }