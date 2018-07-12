{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Bitly";
          version = "0.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sergey Astanin <s.astanin@gmail.com>";
        author = "";
        homepage = "http://bitbucket.org/jetxee/hs-bitly/";
        url = "";
        synopsis = "A library to access bit.ly URL shortener.";
        description = "This package allows to use bit.ly and j.mp URL\nshortening service from Haskell. Currently it supports\nshorten and expand requests.\n\nAPI key is required. Please find yours at <http://bit.ly/account/>.\n\nConfiguration file (`~/.bitly`) format:\n\n> login = your_bit.ly_login\n> apikey = your_API_key\n\nFor command line utility see `bitly-cli` package.";
        buildType = "Simple";
      };
      components = {
        "Bitly" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HTTP
            hsPkgs.HaXml
          ];
        };
      };
    }