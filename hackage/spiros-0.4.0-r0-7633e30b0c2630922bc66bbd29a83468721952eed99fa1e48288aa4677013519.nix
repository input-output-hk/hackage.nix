{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      develop = false;
      static = false;
      examples = false;
      cpphs = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "spiros"; version = "0.4.0"; };
      license = "Apache-2.0";
      copyright = "2019 Sam Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/spiros#readme";
      url = "";
      synopsis = "Spiros Boosalis's Custom Prelude";
      description = "My custom prelude.\nI'm @user\\/sboo@ on Hackage, @\\@sboosali@ on GitHub, and @\\/u\\/spirosboosalis@ on reddit.\n\nDiverges slightly from base's: adding, removing, and shadowing.\n\nCompatible with (and built\\/tested against):\n\n* 5 GHCs — from « ghc-7.10.* » (in Debian) to  « ghc-8.6.* » (the latest, circa 2019).\n* GHCJS  — the Haskell→JavaScript transpiler (« ghcjs-8.6.* »).\n* Musl   — « ghc » statically-linked against « libmusl »\n(instead of dynamically-linked against « glibc », the default).\n* 3 OSs — Linux (« linux »), Windows (« win32 »), and MacOS (« darwin »). (Should work on FreeBSD and Andriod, too).\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.template-haskell)
          (hsPkgs.semigroups)
          (hsPkgs.exceptions)
          (hsPkgs.data-default-class)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.unix-compat)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.cpuinfo)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.split)
          (hsPkgs.case-insensitive)
          (hsPkgs.string-conv)
          (hsPkgs.prettyprinter)
          (hsPkgs.generic-deriving)
          ] ++ [ (hsPkgs.deepseq) ];
        build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs));
        };
      exes = {
        "example-spiros" = {
          depends = [
            (hsPkgs.spiros)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            ];
          build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs));
          };
        };
      tests = {
        "doc" = {
          depends = [ (hsPkgs.base) (hsPkgs.spiros) (hsPkgs.doctest) ];
          build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs));
          };
        };
      };
    }