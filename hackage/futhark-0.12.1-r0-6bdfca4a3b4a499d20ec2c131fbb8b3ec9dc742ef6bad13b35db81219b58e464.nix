{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "futhark"; version = "0.12.1"; };
      license = "ISC";
      copyright = "";
      maintainer = "Troels Henriksen athas@sigkill.dk";
      author = "";
      homepage = "https://futhark-lang.org";
      url = "";
      synopsis = "An optimising compiler for a functional, array-oriented language.";
      description = "Futhark is a small programming language designed to be compiled to\nefficient parallel code. It is a statically typed, data-parallel,\nand purely functional array language in the ML family, and comes\nwith a heavily optimising ahead-of-time compiler that presently\ngenerates GPU code via CUDA and OpenCL, although the language itself\nis hardware-agnostic.\n\nFor more information, see the website at https://futhark-lang.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.dlist)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.gitrev)
          (hsPkgs.haskeline)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.language-c-quote)
          (hsPkgs.mainland-pretty)
          (hsPkgs.markdown)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.neat-interpolation)
          (hsPkgs.parallel)
          (hsPkgs.parser-combinators)
          (hsPkgs.process)
          (hsPkgs.process-extras)
          (hsPkgs.random)
          (hsPkgs.regex-tdfa)
          (hsPkgs.srcloc)
          (hsPkgs.template-haskell)
          (hsPkgs.temporary)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.versions)
          (hsPkgs.zip-archive)
          (hsPkgs.zlib)
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      exes = {
        "futhark" = {
          depends = [ (hsPkgs.base) (hsPkgs.futhark) (hsPkgs.text) ];
          };
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.futhark)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.parser-combinators)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            ];
          };
        };
      };
    }