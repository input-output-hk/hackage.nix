{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      roundtrip = false;
      dev = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-exactprint";
        version = "0.5.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "ExactPrint for GHC";
      description = "Using the API Annotations available from GHC 7.10.2, this\nlibrary provides a means to round trip any code that can\nbe compiled by GHC, currently excluding lhs files.\n\nIt does this with a phased approach\n\n* Delta - converts GHC API Annotations into relative\noffsets, indexed by SrcSpan\n\n* Transform - functions to facilitate changes to\nthe AST, adjusting the annotations generated in the\nDelta phase to suit the changes.\n\n* Print - converts an AST and its annotations to\nproperly formatted source text.\n\n* Pretty - adds annotations to an AST (fragment) so that\nthe output can be parsed back to the same AST.\n\n\nNote: requires GHC 7.10.2 or later";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.free)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.11") (hsPkgs.ghc-boot);
      };
      exes = {
        "roundtrip" = {
          depends  = pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.10.2" && flags.roundtrip) ([
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-exactprint)
            (hsPkgs.ghc-paths)
            (hsPkgs.syb)
            (hsPkgs.temporary)
            (hsPkgs.time)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.11") (hsPkgs.ghc-boot));
        };
        "static" = {
          depends  = pkgs.lib.optionals (flags.roundtrip) ([
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.Diff)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.11") (hsPkgs.ghc-boot));
        };
        "prepare-hackage" = {
          depends  = pkgs.lib.optionals (flags.roundtrip) ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.HUnit)
            (hsPkgs.text)
            (hsPkgs.turtle)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.11") (hsPkgs.ghc-boot));
        };
      };
      tests = {
        "test" = {
          depends  = ([
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.Diff)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.mtl)
            (hsPkgs.syb)
            (hsPkgs.silently)
            (hsPkgs.filemanip)
          ] ++ (if flags.dev
            then [ (hsPkgs.free) ]
            else [
              (hsPkgs.ghc-exactprint)
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.11") (hsPkgs.ghc-boot);
        };
      };
    };
  }