{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      patat-make-man = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "patat";
        version = "0.7.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "2016 Jasper Van der Jeugt";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/patat";
      url = "";
      synopsis = "Terminal-based presentations using Pandoc";
      description = "Terminal-based presentations using Pandoc";
      buildType = "Simple";
    };
    components = {
      exes = {
        "patat" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pandoc)
            (hsPkgs.skylighting)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ];
        };
        "patat-make-man" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.pandoc)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }