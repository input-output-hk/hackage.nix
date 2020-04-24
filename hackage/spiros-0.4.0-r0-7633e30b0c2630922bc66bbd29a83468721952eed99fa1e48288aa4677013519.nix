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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."cpuinfo" or ((hsPkgs.pkgs-errors).buildDepError "cpuinfo"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."string-conv" or ((hsPkgs.pkgs-errors).buildDepError "string-conv"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          ] ++ [
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or ((hsPkgs.pkgs-errors).buildToolDepError "cpphs")));
        buildable = true;
        };
      exes = {
        "example-spiros" = {
          depends = [
            (hsPkgs."spiros" or ((hsPkgs.pkgs-errors).buildDepError "spiros"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or ((hsPkgs.pkgs-errors).buildToolDepError "cpphs")));
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "doc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."spiros" or ((hsPkgs.pkgs-errors).buildDepError "spiros"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or ((hsPkgs.pkgs-errors).buildToolDepError "cpphs")));
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }