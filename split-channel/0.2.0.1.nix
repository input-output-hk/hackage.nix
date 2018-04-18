{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "split-channel";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "(c) 2012-2013 Leon P Smith";
        maintainer = "leon@melding-monads.com";
        author = "Leon P Smith, Joey Adams";
        homepage = "";
        url = "";
        synopsis = "Control.Concurrent.Chan split into sending and receiving halves.";
        description = "This module splits Control.Concurrent.Chan into sending and receiving\nhalves, which allows the type system to more finely constrain program\nbehavior.   As a secondary benefit,  messages written to channels with\nno receive ports associated with them can be reliably garbage collected.\n\nIn addition, this module incorporates several of clean-ups and additions\nto the venerable Chan.  Most notably,  the deprecated thread-unsafe\nfunctions have been removed,  the ability to @duplicate@ Receive Ports\nhas been added,  the @sendMany@ operation allows for multiple messages\nto be sent atomically,  and the @split@ operation turns a single\nchannel into two.";
        buildType = "Custom";
      };
      components = {
        split-channel = {
          depends  = [ hsPkgs.base ];
        };
      };
    }