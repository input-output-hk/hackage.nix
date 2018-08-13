{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "repo-based-blog";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Sebastian Witte";
      maintainer = "woozletoff@gmail.com";
      author = "Sebastian Witte";
      homepage = "https://github.com/saep/repo-based-blog";
      url = "";
      synopsis = "Blogging module using blaze html for markup";
      description = "This package contains a module that can be used in web applications. It's use\ncases are only limited by the use of blaze for the markup of pages. If anynoe\ncares to abstract that away, I would not stand in the way.\n\nThis package also contains an executable that uses the dyre library to allow\na configuration of a web application in the way xmonad or yi does. An examle\ncan be fount in the 'RBB' module.\n\nThe blog contents are managed via a version control system. The filestore\nlibrary has been used as a backend for this and hence the supported\nrepository types mainly depend on the filestore version used. Thes currently\nsuppored repository types are git, mercurial and darcs. The entries are\nrendered using the pandoc library.\n\nFor more information see the haddock documentation of the exported modules or\nthe README.md included in this package.";
      buildType = "Simple";
    };
    components = {
      "repo-based-blog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.filepath)
          (hsPkgs.filestore)
          (hsPkgs.ixset)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.old-locale)
          (hsPkgs.pandoc)
          (hsPkgs.parsec)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
        ];
      };
      exes = {
        "rbb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repo-based-blog)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repo-based-blog)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.QuickCheck)
            (hsPkgs.blaze-html)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.filestore)
            (hsPkgs.ixset)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers-compat)
          ];
        };
      };
    };
  }