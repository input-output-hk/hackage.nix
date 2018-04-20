{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "huckleberry";
          version = "0.9.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Takamasa Mitsuji";
        maintainer = "tkms@mitsuji.org";
        author = "Takamasa Mitsuji";
        homepage = "https://github.com/mitsuji/huckleberry#readme";
        url = "";
        synopsis = "Haskell IOT on Intel Edison and other Linux computers.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        huckleberry = {
          depends  = [ hsPkgs.base ];
        };
      };
    }