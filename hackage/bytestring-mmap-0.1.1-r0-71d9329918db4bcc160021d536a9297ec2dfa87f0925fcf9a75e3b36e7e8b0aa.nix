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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "bytestring-mmap"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart ";
      homepage = "http://code.haskell.org/~dons/code/bytestring-mmap/";
      url = "";
      synopsis = "mmap support for strict ByteStrings";
      description = "\nThis library provides a wrapper to mmap(2), allowing files or\ndevices to be efficiently mapped into memory as a strict ByteString.\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }