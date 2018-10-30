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
      specVersion = "0";
      identifier = {
        name = "HSFFIG";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2005 - 2009, Dimitry Golubovsky";
      maintainer = "golubovsky@gmail.com";
      author = "Dimitry Golubovsky";
      homepage = "http://www.haskell.org/haskellwiki/HSFFIG";
      url = "";
      synopsis = "Generate FFI import declarations from C include files";
      description = "Haskell FFI Binding Modules Generator (HSFFIG) is a tool that parses\nC library include files (.h) and generates Haskell Foreign Functions Interface\nimport declarations for all functions, #define'd constants (where possible),\nenumerations, and structures/unions (to access their members).\nIt is assumed that the GNU C Compiler and Preprocessor are used.\nAuto-generated Haskell modules may be imported into an application\nto get access to the foreign library's functions and variables.\n\nThe package provides a small library that programs using auto-generated\nimports have to link to (specify HSFFIG as one of build-depends), and two\nexecutable programs:\n\n* hsffig: a filter program reading pre-processed include files\nfrom standard input, and producing one large .hsc file to be processed\nby @hsc2hs@, and possibly cut into pieces by @modsplit@. See\n<http://www.haskell.org/haskellwiki/HSFFIG/Tutorial> for more information.\n\n* ffipkg: a wrapper over @hsffig@ which automates the process of\nbuilding a Cabal package out of C include files provided by running\nthe preprocessor, @hsffig@, the splitter, and preparing the files\nnecessary to build a package. See\n<http://www.haskell.org/haskellwiki/FFI_imports_packaging_utility> for\nmore information.\n\nPlease note that @hsffig@ and @ffipkg@ will likely not work properly\nwith C++ include files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.Cabal)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "ffipkg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.directory)
          ];
        };
        "hsffig" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.directory)
          ];
        };
        "testparser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }