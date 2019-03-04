{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "halive"; version = "0.1.6"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "lukexi@me.com";
      author = "Luke Iannini";
      homepage = "https://github.com/lukexi/halive";
      url = "";
      synopsis = "A live recompiler";
      description = "Live recompiler for Haskell\n\n<<http://lukexi.github.io/HaliveDemo.gif>>\n\n/Usage:/\n\n> halive path/to/myfile.hs [optionally any/extra include/dirs ..] [-f|--file-type additional file type] [-c|--compiled] -- [args to app]\n\nAvailable options:\n\n@-f, --file-type <file type>@ - Custom file type to watch for changes (e.g. @-f html@)\n@-c, --compiled@ - Use faster compiled code at the expense of recompilation speed\n\nSee <https://github.com/lukexi/halive/blob/master/README.md README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.foreign-store)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.signal)
          (hsPkgs.text)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8") (hsPkgs.ghc-boot);
        };
      exes = {
        "halive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.halive)
            ];
          };
        };
      tests = {
        "unit" = {
          depends = [ (hsPkgs.base) (hsPkgs.halive) (hsPkgs.hspec) ];
          };
        "demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gl)
            (hsPkgs.sdl2)
            (hsPkgs.halive)
            (hsPkgs.linear)
            (hsPkgs.foreign-store)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.lens)
            (hsPkgs.pretty-show)
            ];
          };
        "subhalive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.halive)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            ];
          };
        "compileexpr" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.halive)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            ];
          };
        "testghc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }