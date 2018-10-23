{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "halive";
        version = "0.1.0.5";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "lukexi@me.com";
      author = "Luke Iannini";
      homepage = "https://github.com/lukexi/halive";
      url = "";
      synopsis = "A live recompiler";
      description = "Live recompiler for Haskell\n\n<<http://lukexi.github.io/HaliveDemo.gif>>\n\n/Usage:/\n\n> halive path/to/myfile.hs [optionally any/extra include/dirs ..] -- [args to app]\n\nSee <https://github.com/lukexi/halive/blob/master/README.md README>";
      buildType = "Simple";
    };
    components = {
      "halive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.foreign-store)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "halive" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.bin-package-db)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.system-filepath)
          ];
        };
      };
    };
  }