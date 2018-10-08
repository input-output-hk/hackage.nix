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
      specVersion = "1.8";
      identifier = {
        name = "git";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/hs-git";
      url = "";
      synopsis = "Git operations in haskell";
      description = "\nA Haskell implementation of git storage operations, allowing users\nto manipulate git repositories (read and write).\n\nThis implementation is fully interoperable with the main C implementation.\n\nThis is strictly only manipulating the git store (what's inside the .git directory),\nand doesn't do anything with the index or your working directory files.\n";
      buildType = "Simple";
    };
    components = {
      "git" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basement)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.containers)
          (hsPkgs.memory)
          (hsPkgs.cryptonite)
          (hsPkgs.vector)
          (hsPkgs.random)
          (hsPkgs.zlib)
          (hsPkgs.zlib-bindings)
          (hsPkgs.hourglass)
          (hsPkgs.unix-compat)
          (hsPkgs.utf8-string)
          (hsPkgs.patience)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
        ];
      };
      tests = {
        "test-unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.hourglass)
            (hsPkgs.git)
          ];
        };
        "test-repository" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.hourglass)
            (hsPkgs.bytedump)
            (hsPkgs.git)
          ];
        };
      };
    };
  }