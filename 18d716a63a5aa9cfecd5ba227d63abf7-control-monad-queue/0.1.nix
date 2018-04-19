{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "control-monad-queue";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Leon P Smith <leon@melding-monads.com>";
        author = "Leon P Smith <leon@melding-monads.com>";
        homepage = "";
        url = "";
        synopsis = "Reusable corecursive queues, via continuations.";
        description = "This library provides efficient real-time queues via self-referential\nlazy lists.  The technique was first published in\n/Circular Programs and Self-Referential Structures/ by Lloyd Allison,\n/Software Practice and Experience/, 19(2), pp.99-109, Feb 1989\n\n<http://www.csse.monash.edu.au/~lloyd/tildeFP/1989SPE/>\n\nFor an explanation of the library implementation, see\n/Lloyd Allison's Corecursive Queues:  Why Continuations Matter/\nby Leon P Smith,  in /The Monad Reader/, Issue 14.\n\n<http://themonadreader.files.wordpress.com/2009/07/issue14.pdf>";
        buildType = "Simple";
      };
      components = {
        control-monad-queue = {
          depends  = [ hsPkgs.base ];
        };
      };
    }