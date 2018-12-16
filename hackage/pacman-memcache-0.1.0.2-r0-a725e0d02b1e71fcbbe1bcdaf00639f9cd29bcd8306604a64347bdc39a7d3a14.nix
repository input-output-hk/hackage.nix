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
      specVersion = "1.2";
      identifier = {
        name = "pacman-memcache";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Krzysztof Skrzętnicki";
      author = "Krzysztof Skrzętnicki";
      homepage = "";
      url = "";
      synopsis = "Read whole Pacman database which pushes it into the memory cache";
      description = "Read whole Pacman database which pushes it into the memory cache\n\nPacman is Linux package manager. It is used by Arch Linux.\nIt's database is rather slow because it contains thousands of little files,\nwhich takes an enormous time to process.\n\nThe easiest way to speed up operations on database is force all those files into memory cache.\nThis is the purpose of this program: it reads whole package database,\nwhere it will reside until kernel decides to remove this files from cache.\n\nThree subsequent runs of pacman:\n\n> pacman -Ss foo  0,37s user 0,66s system 2% cpu 41,459 total\n> pacman -Ss foo  0,16s user 0,08s system 98% cpu 0,238 total\n> pacman -Ss foo  0,15s user 0,08s system 97% cpu 0,237 total\n\nUsing pacman-memcache:\n\n> pacman-memcache  1,11s user 0,53s system 6% cpu 26,312 total\n> pacman -Ss foo  0,15s user 0,09s system 19% cpu 1,260 total\n> pacman -Ss foo  0,15s user 0,08s system 97% cpu 0,235 total\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pacman-memcache" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory-tree)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }