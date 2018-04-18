{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aur-api";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Baojun Wang";
        maintainer = "wangbj@gmail.com";
        author = "Baojun Wang";
        homepage = "https://github.com/wangbj/aur-api";
        url = "";
        synopsis = "ArchLinux AUR json v5 API";
        description = "Implements ArchLinux AUR json v5 API defined at:\n\nhttps://wiki.archlinux.org/index.php/AurJson\n";
        buildType = "Simple";
      };
      components = {
        aur-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.hspec
          ];
        };
      };
    }