{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "react-flux-servant";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Lenz <wuzzeb@gmail.com>";
        author = "John Lenz <wuzzeb@gmail.com>";
        homepage = "https://bitbucket.org/wuzzeb/react-flux-servant";
        url = "";
        synopsis = "Allow react-flux stores to send requests to a servant server";
        description = "See the README below.";
        buildType = "Simple";
      };
      components = {
        react-flux-servant = {
          depends  = [
            hsPkgs.base
            hsPkgs.react-flux
            hsPkgs.servant
            hsPkgs.aeson
            hsPkgs.text
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) hsPkgs.ghcjs-base;
        };
      };
    }