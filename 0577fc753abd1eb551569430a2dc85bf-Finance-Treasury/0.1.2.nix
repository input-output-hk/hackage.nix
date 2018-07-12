{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Finance-Treasury";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "stevelihn@gmail.com";
        author = "Stephen Lihn";
        homepage = "http://www.ecoin.net/haskell/Finance-Treasury.html";
        url = "";
        synopsis = "Obtain Treasury yield curve data";
        description = "Obtain Treasury yield curve data from Department of Treasury website";
        buildType = "Simple";
      };
      components = {
        "Finance-Treasury" = {
          depends  = [
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.HTTP-Simple
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.hxt
            hsPkgs.hxt-filter
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.old-locale
            ]
            else [ hsPkgs.base ]);
        };
      };
    }