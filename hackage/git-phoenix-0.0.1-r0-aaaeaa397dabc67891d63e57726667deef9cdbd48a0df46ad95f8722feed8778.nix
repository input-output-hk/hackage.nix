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
      specVersion = "3.0";
      identifier = { name = "git-phoenix"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2025";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/git-phoenix";
      url = "";
      synopsis = "Recover Git repositories from disk recovery tool output (photorec)";
      description = "This is a command line tool for recovery Git repositories after\naccidental removal or file system failure.\n\n== Motivation\n#motivation#\n\nThe tool is started as a practical attempt to retrieve a few unpublished\nrepositories from an EXT4 disk, with hundreds of other repos including\nvery big ones (nixpkgs, Linux kernel, GHC), played a role of haystack\nhere.\n\nEXT4 has tools, such as extundelete and ext4magic, but they didn’t\nsucceed in that case. So I switched to more primitive tool (photorec),\nproducing independent files with arbitrary names, based on magic headers\nand other content heuristics, specific to particular format, and luck\nthat files take sequencial disk blocks. The tool did the job, but\nrequried magic tuning, because by default GIT object files are skipped.\nRescued git files usually were bigger than compressed content and had\ntrailing trash bytes.\n\n== Getting input with photorec\n#getting-input-with-photorec#\n\ngit-phoenix need input produced by photorec or similar tool. To make\nphotorec recognize the zlib file format put following config into\n@~\\/.photorec.sig@ on livecd. I used system-rescue distributive.\n\n> go1 0 0x7801\n> go2 0 0x78DA\n> go3 0 0x789C\n\nLaunch photorec without arguments - it has ncurses terminal UI.\n\nphotorec output looks like:\n\n> $ tree /paranoid-no-brutforce-nonexpert-nocorrupted-zlib/\n> |-- recup_dir.1\n> |   |-- f0305926.go1\n> |   |-- f0378540.go1\n> |   |-- f0421825.go1\n> ...\n> |-- recup_dir.1055\n>     ...\n>     |-- f167043017.go1\n>     `-- f167043025.go1\n> $\n\n== Building\n#building#\n\nThe easiest way to build the project is to use nix.\n\n> $ nix-build\n> $ ./result/bin/git-phoenix --help\n\n== git-phoenix recovery steps\n#git-phoenix-recovery-steps#\n\ngit-phoenix sunny day scenario assumes execution of several commands to\nget GIT repo from photorec output.\n\n=== Step 1. Building uber repo\n#step-1.-building-uber-repo#\n\nUber repo is a folder with structure equal to @.git\\/objects@ but\ninstead of regular files symlinks point to files in photorec structure.\n\n> $ git-phoenix uber -o uber -i /paranoid-no-brutforce-nonexpert-nocorrupted-zlib/\n> Duration: 45.71s\n> Found:    423254\n> Speed:    9260.03 files per second\n> Maximum number of SHA collisions: 17\n> $\n\nUber command picks valid GIT objects and mitigates SHA collisions, which\nis pretty common in this situation.\n\n=== Step 2. Discovery HEAD commit\n#step-2.-discovery-head-commit#\n\nThis step is optional if you managed to recover reflog by simply\ngrepping commit comment just pick the latest hash from there.\n\nCommand prints SHAs of consistent commit chains i.e. ending with a\ncommit without parent.\n\n> $ git-phoenix heads -a '^John' -u uber\n> 7768eed9387ff 1970-01-01 00:00 John Doe  Big Bang\n\nArbitrary commit can be filter in uber repo too:\n\n> $ git-phoenix search --days-before 0 --days-after 9 -a '^John' -u uber\n> 7768eed9387ff 1970-01-01 00:00 John Doe  Big Bang\n\n=== Step 3. Real GIT repo extraction\n#step-3.-real-git-repo-extraction#\n\nUber repo should contain all required files, but it is not a valid GIT\nrepo. GIT thoroughly checks object files and complains about any\ntrailing trash. Extraction creates GIT repo with master branch referring\nspecified commit, chopping off trailing trash and disambiguating SHAs.\n\n> $ git-phoenix extract -g my-foo -u uber -s 7768eed9387ff\n> $ git -C my-foo reset\n> $ git -C my-foo checkout .\n> $ echo Woo-Hah\n\n== Development environment\n#development-environment#\n\n== Building\n#building-1#\n\nHLS should be available inside dev env.\n\n> $ nix-shell\n> $ emacs src/Data/Git/Phoenix.hs &\n> $ cabal build\n> $ cabal test\n\n== Static linking\n#static-linking#\n\nStatic is not enabled by default, because GitHub CI job times out.\n\n> nix-build --arg staticBuild true";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      exes = {
        "git-phoenix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."git-phoenix" or (errorHandler.buildDepError "git-phoenix"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."git-phoenix" or (errorHandler.buildDepError "git-phoenix"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }