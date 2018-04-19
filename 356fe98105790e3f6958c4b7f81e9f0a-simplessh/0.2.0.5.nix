{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "simplessh";
          version = "0.2.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tho.feron@gmail.com";
        author = "Thomas Feron";
        homepage = "http://hub.darcs.net/thoferon/simplessh";
        url = "";
        synopsis = "Simple wrapper around libssh2";
        description = "It supports authentication by password or keys. Everything is in the SimpleSSH monad which is ErrorT SimpleSSHError IO, allowing to manage errors in a \"haskeller\" way.";
        buildType = "Simple";
      };
      components = {
        simplessh = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
          ];
          libs = [ pkgs.ssh2 ];
        };
      };
    }