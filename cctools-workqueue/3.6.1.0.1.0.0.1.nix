{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      warn = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cctools-workqueue";
          version = "3.6.1.0.1.0.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "abdulwahidc@gmail.com";
        author = "Badi' Abdul-Wahid";
        homepage = "http://bitbucket.org/badi/hs-cctools-workqueue";
        url = "";
        synopsis = "High-level interface to CCTools' WorkQueue library";
        description = "This package provides a high-level Haskell interface to the WorkQueue library:\n<http://www.nd.edu/~ccl/software/workqueue/>\n\n\nWork Queue is a framework for building large\nmaster-worker applications that span many\ncomputers including clusters, clouds, and\ngrids. Work Queue applications are written in C,\nPerl, or Python using a simple API that allows\nusers to define tasks, submit them to the queue,\nand wait for completion. Tasks are executed by a\nstandard worker process that can run on any\navailable machine. Each worker calls home to the\nmaster process, arranges for data transfer, and\nexecutes the tasks. Together, the master and\nworker handle a wide variety of failures,\nallowing for dynamically scalable and robust\napplications.\n\n<<http://www.nd.edu/~ccl/software/workqueue/wq-small.gif>>\n\n\nExample usage:\n\nBy default the master listens on 9123 on the localhost host.\nStart a worker:\n\n> \$ work_queue_worker -d all localhost 9123\n\nNow we can execute the following master program:\n\n> module Main where\n>\n> import Control.Distributed.CCTools.WorkQueue\n>\n> import Control.Applicative ((<\$>))\n> import qualified Data.ByteString.Char8 as BS (pack, putStrLn)\n> import Foreign.C.String (newCStringLen)\n> import Control.Monad (forM_)\n>\n>\n>\n> mktask :: Show a => a -> IO Task\n> mktask v = do\n>   let script = BS.pack . unlines \$ [\n>               \"t=\$(echo \$RANDOM % 10 | bc)\"\n>             , \"sleep \$t\"\n>             , \"echo \" ++ show v\n>             ]\n>   t <- task \$ cmd \"bash script.sh\"\n>   specifyBuffer t script (remote \"script.sh\") False\n>   specifyTag    t \$ show v\n>   return t\n>\n> printStats :: WorkQueue -> IO ()\n> printStats q = do\n>   s <- getStats q\n>   print \$ map (\$ s) [tasksRunning, tasksWaiting, tasksComplete]\n>\n> processResult :: WorkQueue -> Task -> IO ()\n> processResult q r = do\n>   putStrLn \$ \"Got: \" ++ show (tag r)\n>   BS.putStrLn . output \$ r\n>   delete r\n>\n> main = do\n>   setDebugFlags [All]\n>   q  <- workqueue defaultQParams\n>   ts <- mapM mktask [1..10]\n>   forM_ ts (submit q)\n>\n>   eventLoop q (seconds 1) printStats processResult\n>\n>   putStrLn \"Done!\"";
        buildType = "Simple";
      };
      components = {
        cctools-workqueue = {
          depends  = ([
            hsPkgs.bindings-cctools
            hsPkgs.lens
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.monad-loops
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          libs = [ pkgs.dttools ];
        };
      };
    }