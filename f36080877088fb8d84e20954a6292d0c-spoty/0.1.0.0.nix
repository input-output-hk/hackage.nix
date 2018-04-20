{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "spoty";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nilsson.dd+code@gmail.com";
        author = "David Nilsson";
        homepage = "https://github.com/davnils/spoty";
        url = "";
        synopsis = "Spotify web API wrapper";
        description = "Web API <https://developer.spotify.com/web-api/> wrapper powered by lens and pipes, allowing easy access to public endpoints.\nDoes not have any external dependencies nor requirements regarding app registration.\n\n* Paging is handled transparently using pipes\n\n* All data types are navigated using lenses\n\nAll public endpoints, with multi-get versions excluded, are implemented.\n\n> > :set -XOverloadedStrings\n> > :m +Control.Lens Utils.Spoty\n> > Just artist <- fetchOne (searchArtist \"avicii\")      -- assume at least one match\n> > popular <- getArtistTop (view spotifyID artist) \"SE\" -- retrieve the most popular tracks in Sweden\n> > mapM_ (print . view name) popular                    -- print the corresponding names\n> \"Hey Brother\"\n> \"Addicted To You\"\n> \"Wake Me Up\"\n> ...\n\nPlease read the README for details.";
        buildType = "Simple";
      };
      components = {
        spoty = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.pipes
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.wreq
          ];
        };
      };
    }