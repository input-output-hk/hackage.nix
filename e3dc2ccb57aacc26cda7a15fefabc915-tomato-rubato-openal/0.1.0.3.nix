{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tomato-rubato-openal";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Heinrich Apfelmus 2012";
        maintainer = "Heinrich Apfelmus <apfelmus at quantentunnel de>";
        author = "Heinrich Apfelmus";
        homepage = "http://www.haskell.org/haskellwiki/tomato-rubato";
        url = "";
        synopsis = "Easy to use library for audio programming.";
        description = "WARNING: This project is still in pre-alpha stage. For adventurers only!\n\nAn easy to use library for live audio programming in Haskell.\nInstant gratification from your speakers by typing into GHCi!\n\nThis module uses the OpenAL bindings.\n\nWARNING: This project is still in pre-alpha stage. For adventurers only!";
        buildType = "Simple";
      };
      components = {
        "tomato-rubato-openal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.vector
            hsPkgs.OpenAL
          ];
        };
      };
    }