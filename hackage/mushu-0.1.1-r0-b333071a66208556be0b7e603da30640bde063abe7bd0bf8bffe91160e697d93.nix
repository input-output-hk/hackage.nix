{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mushu";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Elie Genard";
      maintainer = "elaye.github.io@gmail.com";
      author = "Elie Genard";
      homepage = "https://github.com/elaye/mushu#README.md";
      url = "";
      synopsis = "Minimalist MPD client";
      description = "Mushu is a minimalist MPD client with a TUI and an incremental fuzzy finder for your music library";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mushu" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.safe-exceptions)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.libmpd)
            (hsPkgs.text)
            (hsPkgs.fuzzy)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.list-t)
            (hsPkgs.connection)
            (hsPkgs.mtl)
            (hsPkgs.hscurses)
            (hsPkgs.pretty)
            (hsPkgs.htoml)
            (hsPkgs.unordered-containers)
            (hsPkgs.brick)
            (hsPkgs.text-zipper)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.microlens-platform)
            (hsPkgs.vty)
            (hsPkgs.process)
            (hsPkgs.vector)
            (hsPkgs.transformers)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.template-haskell)
          ];
        };
      };
      tests = {
        "mushu-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
          ];
        };
      };
    };
  }