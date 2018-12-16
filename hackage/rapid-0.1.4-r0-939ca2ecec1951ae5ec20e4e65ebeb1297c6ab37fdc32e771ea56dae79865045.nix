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
        name = "rapid";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2018 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "https://github.com/esoeylemez/rapid";
      url = "";
      synopsis = "Rapid prototyping with GHCi: hot reloading of running\ncomponents and reload-surviving values";
      description = "This package provides a rapid prototyping suite for GHCi\nthat can be used standalone or integrated into editors.  You can\nhot-reload individual running components as you make changes to\ntheir code.  It is designed to shorten the development cycle during\nthe development of long-running programs like servers, web\napplications and interactive user interfaces.\n\nIt can also be used in the context of batch-style programs:  Keep\nresources that are expensive to create in memory and reuse them\nacross module reloads instead of reloading/recomputing them after\nevery code change.\n\nTechnically this package is a safe and convenient wrapper around\n<https://hackage.haskell.org/package/foreign-store foreign-store>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.foreign-store)
          (hsPkgs.stm)
        ];
      };
    };
  }