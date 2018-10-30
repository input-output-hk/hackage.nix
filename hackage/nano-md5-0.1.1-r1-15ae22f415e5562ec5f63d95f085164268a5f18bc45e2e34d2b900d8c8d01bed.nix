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
        name = "nano-md5";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/nano-md5";
      url = "";
      synopsis = "Efficient, ByteString bindings to OpenSSL.";
      description = "Efficient, ByteString bindings to OpenSSL.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ];
        libs = [ (pkgs."crypto") ];
      };
    };
  }