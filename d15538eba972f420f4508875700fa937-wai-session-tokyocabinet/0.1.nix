{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-session-tokyocabinet";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2012 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/wai-session-tokyocabinet";
        url = "";
        synopsis = "Session store based on Tokyo Cabinet";
        description = "Provides a session store for use with wai-session.\n\nSee example/Main.hs in git for example usage.";
        buildType = "Simple";
      };
      components = {
        "wai-session-tokyocabinet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.cereal
            hsPkgs.tokyocabinet-haskell
            hsPkgs.errors
            hsPkgs.wai-session
          ];
        };
      };
    }