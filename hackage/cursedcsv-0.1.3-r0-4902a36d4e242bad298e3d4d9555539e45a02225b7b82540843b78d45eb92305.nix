{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cursedcsv"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman, Jeff Polakow";
      homepage = "";
      url = "";
      synopsis = "Terminal tool for viewing tabular data";
      description = "Curses-based tool for quick display, searching, sorting, etc. of\ntabular data. Help available in the app with either '?' or 'h'.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cursedcsv" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parseargs)
            (hsPkgs.natural-sort)
            (hsPkgs.hscurses)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.mtl)
            (hsPkgs.csv-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.primitive)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      };
    }