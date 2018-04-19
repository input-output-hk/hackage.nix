{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Workflow";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "library for transparent execution of computations across shutdowns and restarts";
        description = "transparent low level support (state logging, resume of the computation state, wait for data condition) for very long time\nlong living event driven processes. Workflow give the two first services to any monadic computation of type  (a-> m a)\nf x >>=\\x'-> g x' >>= \\x''->... z\nby prefixing each action with the method \"step\":\nstep f  x >>= \\x'-> step g  x' >>= \\x''->...\nThis means that a workflow can be described with the familiar \"do\" notation. In principle, there is no other limitation\non the syntax but the restriction (a -> m a): All computations consume and produce the same type of data.\nfor a monadic computation, Workflow provides:\n- transparent checkpointing for each step in permanent storage (using TCache)\n- sync or async  syncronization of each action results with disk.\n- after soft or hard interruption, resume  the monadic computation at the last checkpoint\n- retrieval of the returned value of any previous action\n- suspend the computation until the input object meet certain conditions. useful for inter-workflow\ncomunications.\nFor various reasons, this package force the use of TCache for storage and refSerialize for writing to/from strings\nat the end of the workflow all the intermediate data is erased.\nsee demo.hs and the header of Control.TCache for documentation.\nthis version uses Data.TCache.Dynamic";
        buildType = "Simple";
      };
      components = {
        Workflow = {
          depends  = [
            hsPkgs.base
            hsPkgs.RefSerialize
            hsPkgs.TCache
            hsPkgs.stm
            hsPkgs.old-time
          ];
        };
      };
    }