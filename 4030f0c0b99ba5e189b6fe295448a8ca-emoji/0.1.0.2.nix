{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "emoji";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Daishi Nakajima";
        maintainer = "nakaji.dayo@gmail.com";
        author = "Daishi Nakajima";
        homepage = "https://github.com/nakaji-dayo/hs-emoji#readme";
        url = "";
        synopsis = "emoji utility";
        description = "emoji utility";
        buildType = "Simple";
      };
      components = {
        emoji = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.template-haskell
          ];
        };
        exes = {
          emoji-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.emoji
            ];
          };
        };
      };
    }