{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      split-base = true;
      cli = false;
    };
    package = {
      specVersion = "1.8.0.6";
      identifier = {
        name = "system-uuid";
        version = "2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/system-uuid/";
      url = "";
      synopsis = "Bindings to system UUID functions.";
      description = "Bindings to the native UUID generator for a number of platforms. Please\ncontact the author if your platform is not supported.";
      buildType = "Simple";
    };
    components = {
      "system-uuid" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
          (hsPkgs.murmur-hash)
        ] ++ [ (hsPkgs.base) ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs."uuid") ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4");
      };
      exes = {
        "hooty" = {
          depends  = [
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.template-haskell)
            (hsPkgs.parsec)
            (hsPkgs.murmur-hash)
          ] ++ [ (hsPkgs.base) ];
          libs = pkgs.lib.optional (system.isLinux) (pkgs."uuid") ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4");
        };
      };
    };
  }