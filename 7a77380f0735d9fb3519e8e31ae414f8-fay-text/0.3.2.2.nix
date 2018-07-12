{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay-text";
          version = "0.3.2.2";
        };
        license = "MIT";
        copyright = "2013 Michael Snoyman, Adam Bergmark";
        maintainer = "adam@bergmark.nl";
        author = "Michael Snoyman, Adam Bergmark";
        homepage = "https://github.com/faylang/fay-text";
        url = "";
        synopsis = "Fay Text type represented as JavaScript strings";
        description = "Text type represented as JavaScript strings for Fay and Data.Text for GHC. Use with OverloadedStrings and RebindableSyntax to have Fay treat string literals as Text.";
        buildType = "Simple";
      };
      components = {
        "fay-text" = {
          depends  = [
            hsPkgs.text
            hsPkgs.fay
            hsPkgs.fay-base
          ];
        };
      };
    }