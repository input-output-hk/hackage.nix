{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-accept-language";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tkms@mitsuji.org";
        author = "Takamasa Mitsuji";
        homepage = "https://github.com/mitsuji/wai-accept-language";
        url = "";
        synopsis = "Rewrite based on Accept-Language header";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "wai-accept-language" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.word8
            hsPkgs.http-types
            hsPkgs.wai
            hsPkgs.wai-extra
          ];
        };
        exes = {
          "wai-accept-language-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-accept-language
              hsPkgs.wai
              hsPkgs.wai-app-static
              hsPkgs.file-embed
              hsPkgs.warp
            ];
          };
        };
      };
    }