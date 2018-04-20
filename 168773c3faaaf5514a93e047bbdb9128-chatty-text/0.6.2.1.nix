{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chatty-text";
          version = "0.6.2.1";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "m@doomanddarkness.eu";
        author = "Marvin Cohrs";
        homepage = "http://doomanddarkness.eu/pub/chatty";
        url = "";
        synopsis = "Provides some classes and types for dealing with text, using the fundaments of Chatty.";
        description = "Provides some classes and types for dealing with text, using the fundaments of Chatty. Mainly two parser monads and a typesetter.";
        buildType = "Simple";
      };
      components = {
        chatty-text = {
          depends  = [
            hsPkgs.base
            hsPkgs.chatty
            hsPkgs.transformers
          ];
        };
      };
    }