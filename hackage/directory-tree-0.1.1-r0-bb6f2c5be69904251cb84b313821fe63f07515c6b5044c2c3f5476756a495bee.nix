{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "directory-tree"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Brandon Simmons <brandon.m.simmons@gmail.com>";
      maintainer = "Brandon Simmons <brandon.m.simmons@gmail.com>";
      author = "Brandon Simmons";
      homepage = "http://coder.bsimmons.name/blog/2009/05/directory-tree-module-released/";
      url = "";
      synopsis = "A simple directory-like tree datatype, with useful IO functions ";
      description = "A simple directory-like tree datatype, with useful IO functions and Foldable and Traversable instance\n\nProvides a simple data structure mirroring a directory tree on the\nfilesystem, as well as useful functions for reading and writing\nfile and directory structures in the IO monad.\n\nImporting the library and optional (useful) Foldable and Traverable libraries:\n\n> import System.Directory.Tree\n> import qualified Data.Foldable as F\n> import qualified Data.Traversable as T\n\nWrite a hand-made directory tree of textfiles (strings) to the disk.\nSimulates creating a new user Tux's home directory on a unix machine:\n\n> writeDirectory$ \"/home\" :/ Dir \"Tux\" [File \"README\" \"Welcome!\"]\n\n\"read\" a directory by opening all the files at a filepath with readFile,\nreturning an 'AnchoredDirTree String' (d2). Then check for any IO failures:\n\n> do (base :/ d2) <- readDirectory \"../parent_dir/dir2/\"\n>    let failed = anyFailed d2\n>    if failed then ...\n\nUse Foldable instance function to concat a directory 'dir' of text files into a\nsingle file under the same directory:\n\n> do (b :/ dt) <- readDirectory dir\n>    let f = F.concat dt\n>    return$ b :/ File \"ALL_TEXT\" f\n\nOpen all the files in the current directory as lazy bytestrings, ignoring\nthe base path in Anchored wrapper:\n\n> import qualified Data.ByteString.Lazy as B\n> do (_ :/ dTree) <- readDirectoryWith B.readFile \"./\"\n\nPlease send me any comments, requests or bug reports\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
    };
  }