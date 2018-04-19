{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "poll";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>, Dylan Simon <dylan@dylex.net>";
        homepage = "";
        url = "";
        synopsis = "Bindings to poll.h";
        description = "Poll functionality allows to wait on different FileDescriptors simultaneously.";
        buildType = "Simple";
      };
      components = {
        poll = {
          depends  = [
            hsPkgs.enumset
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
      };
    }