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
      specVersion = "3.0";
      identifier = { name = "memfd"; version = "1.0.1.0"; };
      license = "Apache-2.0";
      copyright = "2022 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/memfd";
      url = "";
      synopsis = "Open temporary anonymous Linux file handles";
      description = "\"memfd\" (__mem__ory __f__ile __d__escriptor) lets us open pseudo-\"files\" that are not actually stored in the \"real\" file system. This feature is only available on Linux.\n\nSuch a file is described as an \"anonymous file\". It behaves like a regular file, and so can be modified, truncated, memory-mapped, and so on. However, unlike a regular file, it lives in RAM and has a volatile backing storage. Once all references to the file are dropped, it is automatically released.\n\nThe recommended way to import this library is:\n\n@\nimport qualified Memfd\n@\n\nThere is one central function:\n\n@\ncreate :: CreateOptions -> IO Fd\n@\n\n[Fd](https://hackage.haskell.org/package/base/docs/System-Posix-Types.html#t:Fd) stands for \"file descriptor\". Here are some things you can do with a file descriptor:\n\n- [Set the file size](https://hackage.haskell.org/package/unix/docs/System-Posix-Files.html#v:setFdSize)\n- [Map the file](https://hackage.haskell.org/package/shared-memory/docs/MMAP.html#v:mmap) into your process's memory space\n- [Send the file descriptor](https://hackage.haskell.org/package/network/docs/Network-Socket.html#v:sendFd) over a Unix-domain socket to share the memory with another process\n- [Close the file](https://hackage.haskell.org/package/unix/docs/System-Posix-IO.html#v:closeFd) and allow its contents to get garbage collected by the operating system";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }