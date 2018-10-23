{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "archlinux-web";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart <dons@galois.com>";
      homepage = "http://code.haskell.org/~dons/code/archlinux";
      url = "";
      synopsis = "Website maintenance for Arch Linux packages";
      description = "Website maintenance for Arch Linux packages\n\nTo get info about a package:\n\n> info \"xmonad\"\n\nTo find packages matching a string:\n\n> search \"xmonad\"\n\nTo find packages owned by a maintainer:\n\n> maintainer \"arch-haskell\"\n\nGenerate an html page of interesting facts about\npackages in AUR and Hackage.\n\n> report [\"xmonad\"]\n\nSee also the cabal2arch tool <http://hackage.haskell.org/package/cabal2arch>\nfor conversion between Hackage and AUR.";
      buildType = "Simple";
    };
    components = {
      "archlinux-web" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.Cabal)
          (hsPkgs.json)
          (hsPkgs.pretty)
          (hsPkgs.prettyclass)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.xhtml)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
          (hsPkgs.strict-concurrency)
          (hsPkgs.old-time)
          (hsPkgs.csv)
          (hsPkgs.archlinux)
        ];
      };
      exes = {
        "arch-report" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.xhtml)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.strict-concurrency)
            (hsPkgs.old-time)
            (hsPkgs.csv)
            (hsPkgs.archlinux)
          ];
        };
        "distro-map" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.xhtml)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.strict-concurrency)
            (hsPkgs.old-time)
            (hsPkgs.csv)
            (hsPkgs.archlinux)
          ];
        };
        "get-arch-url" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.csv)
            (hsPkgs.archlinux)
          ];
        };
        "arch-haskell-packages" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.csv)
            (hsPkgs.archlinux)
          ];
        };
        "update-aur-log" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }