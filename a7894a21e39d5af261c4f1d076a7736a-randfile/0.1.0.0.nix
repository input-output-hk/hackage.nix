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
        name = "randfile";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2011";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "";
      url = "";
      synopsis = "Program for picking a random file";
      description = "This program selects a random file from the current directory, including\nfiles in subdirectories.  If you like to manage your music collection using\nthe command line, this program can be used to approximate \\\"shuffle\\\".\n\nMore precisely, it starts at the current directory, picks a random entry,\nand descends if it is a directory.  It does not give more weight to\ndirectories containing more files.  It should only fail if there are no\nregular files under the current directory that you can see.\n\nIf you are wondering why I bothered to use crypto-grade random number\ngeneration, it is because I found @System.Random@ to be unsatisfactory.\nWith @System.Random@, this program tended to return the same file\nrepeatedly.\n\nNote: on Unix, this program follows symbolic links, while on Windows, it\ndoesn't.  Symbolic links were introduced in Windows Vista and\nWindows Server 2008.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "randfile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.crypto-api)
            (hsPkgs.transformers)
            (hsPkgs.monadcryptorandom)
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }