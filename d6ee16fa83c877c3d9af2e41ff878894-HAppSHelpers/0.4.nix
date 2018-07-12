{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HAppSHelpers";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008 Thomas Hartman";
        maintainer = "Thomas Hartman <thomashartman1 at gmail>";
        author = "Thomas Hartman & Eelco Lempsink";
        homepage = "";
        url = "";
        synopsis = "Convenience functions for HAppS.";
        description = "Functions I found I was using repeatedly when programming HAppS based web-apps.\nI'll deprecate whatever bits of this make their way into the HAppS core on hackage.";
        buildType = "Simple";
      };
      components = {
        "HAppSHelpers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.HAppS-Server
            hsPkgs.hscolour
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.HStringTemplate
            hsPkgs.HStringTemplateHelpers
            hsPkgs.safe
            hsPkgs.MissingH
            hsPkgs.containers
            hsPkgs.parsec
          ];
        };
      };
    }