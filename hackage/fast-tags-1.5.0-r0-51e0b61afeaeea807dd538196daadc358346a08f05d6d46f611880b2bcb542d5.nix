{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { profile = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fast-tags";
        version = "1.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "https://github.com/elaforge/fast-tags";
      url = "";
      synopsis = "Fast incremental vi and emacs tags.";
      description = "Yet another tags program.  Like hasktags, it uses its own parser rather\nthan haskell-src or haskell-src-exts, so it's fast.  It understands\nhsc and literate haskell.\n\nIn addition, it will load an existing tags file and merge generated tags.\n\nThe intent is to bind it to vim's BufWrite autocommand to automatically\nkeep the tags file up to date.  This only works for files changed by the\neditor of course, so you may want to bind 'rm tags' to a 'pull' posthook.\n\nWith the --fully_qualified flag and a fancy vim function, it can\ndisambiguate tags based on their qualification, even if it's locally\nrenamed.  So M.x will find  A.B.x if you import A.B as M.\n\nTo see the extra vim configuration, you probably have to get the source via\ncabal unpack or git clone.\n\nLimitations:\n\n- Not using a real haskell parser means there is likely to be dark\ncorners that don't parse right.\n\n- Code has to be indented \\\"properly\\\", so brace and semicolon style with\nstrange dedents will probably confuse it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.cpphs)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.utf8-string)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "fast-tags" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.fast-tags)
          ];
        };
      };
      tests = {
        "test-fast-tags" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.fast-tags)
          ];
        };
      };
    };
  }