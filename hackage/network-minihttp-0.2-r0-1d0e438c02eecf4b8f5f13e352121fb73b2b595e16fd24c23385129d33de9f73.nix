{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "network-minihttp"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley <agl@imperialviolet.org>";
      homepage = "http://darcs.imperialviolet.org/network-minihttp";
      url = "";
      synopsis = "A ByteString based library for writing HTTP(S) servers and clients.";
      description = "A ByteString based HTTP(S) library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.network-bytestring)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.binary)
          (hsPkgs.binary-strict)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.network-connection)
          (hsPkgs.network-dns)
          (hsPkgs.tagsoup)
          ];
        };
      };
    }