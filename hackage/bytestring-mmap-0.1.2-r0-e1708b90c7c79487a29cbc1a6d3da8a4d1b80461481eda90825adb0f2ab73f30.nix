{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bytestring-mmap";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/bytestring-mmap/";
      url = "";
      synopsis = "mmap support for strict ByteStrings";
      description = "\nThis library provides a wrapper to mmap(2), allowing files or\ndevices to be lazily loaded into memory as a strict ByteString,\nusing the virtual memory subsystem to do on-demand loading.\n";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.unix)
        ] ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }