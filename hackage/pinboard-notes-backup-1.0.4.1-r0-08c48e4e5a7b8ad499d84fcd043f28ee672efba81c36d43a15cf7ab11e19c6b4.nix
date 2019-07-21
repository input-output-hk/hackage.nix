{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pinboard-notes-backup"; version = "1.0.4.1"; };
      license = "GPL-3.0-only";
      copyright = "2016-2017, 2019 Benjamin D. Esham";
      maintainer = "benjamin@esham.io";
      author = "Benjamin Esham";
      homepage = "https://github.com/bdesham/pinboard-notes-backup";
      url = "";
      synopsis = "Back up the notes you've saved to Pinboard";
      description = "A command-line application to back up your notes from the\nPinboard bookmarking service to a local SQLite database.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pnbackup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.req)
            (hsPkgs.sqlite-simple)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }