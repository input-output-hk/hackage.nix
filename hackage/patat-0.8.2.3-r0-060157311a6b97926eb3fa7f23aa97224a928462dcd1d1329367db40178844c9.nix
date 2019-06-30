{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { patat-make-man = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "patat"; version = "0.8.2.3"; };
      license = "GPL-2.0-only";
      copyright = "2016 Jasper Van der Jeugt";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/patat";
      url = "";
      synopsis = "Terminal-based presentations using Pandoc";
      description = "Terminal-based presentations using Pandoc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "patat" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.colour)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pandoc)
            (hsPkgs.process)
            (hsPkgs.skylighting)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            (hsPkgs.network-uri)
            (hsPkgs.network)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
          };
        "patat-make-man" = {
          depends = [
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