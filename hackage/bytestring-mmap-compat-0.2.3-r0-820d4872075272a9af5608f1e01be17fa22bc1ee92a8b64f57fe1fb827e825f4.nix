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
      specVersion = "2.0";
      identifier = { name = "bytestring-mmap-compat"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Don Stewart 2008-2011, (c) Anton Gushcha 2024-2026";
      maintainer = "Anton Gushcha <ncrashed@gmail.com>";
      author = "Don Stewart";
      homepage = "https://github.com/NCrashed/bytestring-mmap-compat";
      url = "";
      synopsis = "mmap support for strict ByteStrings (unix >= 2.8 fork)";
      description = "A fork of @bytestring-mmap@ that compiles against @unix >= 2.8@.\n\nThe original package (Don Stewart, last uploaded 2011) calls\n@System.Posix.openFd@ with the pre-2.8 four-argument signature.\nUpstream is unmaintained and the latest Hackage revision restricts\nthe @unix@ bound to @< 2.8@, which makes the package unusable in\npackage sets that pull in a newer @unix@ transitively.\n\nThis fork adds a tiny @System.Posix.IO.Compat@ shim that selects\nthe right @openFd@ signature via CPP and widens the @unix@ bound,\nleaving the public API (@System.IO.Posix.MMap@,\n@System.IO.Posix.MMap.Lazy@) byte-for-byte compatible with the\nupstream.\n\nThe package name is suffixed with @-compat@ so it can coexist on\nHackage with the original; switch back to upstream\n@bytestring-mmap@ once it adopts a compatible @openFd@ call site.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
    };
  }