{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
      validate = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hoed";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2014 Maarten Faddegon";
        maintainer = "hoed@maartenfaddegon.nl";
        author = "Maarten Faddegon";
        homepage = "http://maartenfaddegon.nl";
        url = "";
        synopsis = "Lighweight algorithmic debugging based on observing intermediate values and the cost centre stack.";
        description = "";
        buildType = "Simple";
      };
      components = {
        Hoed = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.threepenny-gui
            hsPkgs.filepath
            hsPkgs.libgraph
            hsPkgs.RBTree
            hsPkgs.regex-posix
            hsPkgs.mtl
            hsPkgs.directory
          ];
        };
        exes = {
          hoed-examples-Foldl = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-HeadOnEmpty1 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-HeadOnEmpty2 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-IndirectRecursion = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-Pretty = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.array
            ];
          };
          hoed-examples-Example1 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-Example3 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-Example4 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-Insort1 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-Insort2 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-DoublingServer1 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.network
            ];
          };
          hoed-examples-DoublingServer2 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.network
            ];
          };
          hoed-examples-DoublingServer3 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.network
            ];
          };
          hoed-examples-DoublingServer4 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.network
            ];
          };
          hoed-examples-DoublingServer5 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.network
            ];
          };
          hoed-examples-Hashmap = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.array
            ];
          };
          hoed-examples-Responsibility = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.array
            ];
          };
          hoed-examples-TightRope1 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-TightRope2 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-TightRope3 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-examples-AskName = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-DoublingServer = {
            depends  = optionals _flags.validate [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
              hsPkgs.network
            ];
          };
          hoed-tests-Insort2 = {
            depends  = optionals _flags.validate [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-Example1 = {
            depends  = optionals _flags.validate [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-Example3 = {
            depends  = optionals _flags.validate [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-Example4 = {
            depends  = optionals _flags.validate [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
          hoed-tests-IndirectRecursion = {
            depends  = optionals _flags.validate [
              hsPkgs.base
              hsPkgs.Hoed
              hsPkgs.threepenny-gui
              hsPkgs.filepath
            ];
          };
        };
      };
    }