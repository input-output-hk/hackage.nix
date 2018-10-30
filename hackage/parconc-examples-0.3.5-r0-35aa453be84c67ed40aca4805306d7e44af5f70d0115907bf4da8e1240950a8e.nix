{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm = false;
      devil = false;
      cuda = false;
      accelerate = true;
      distributed = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "parconc-examples";
        version = "0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011-2013";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "";
      url = "";
      synopsis = "Examples to accompany the book \"Parallel and Concurrent Programming in Haskell\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rpar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.parallel)
          ];
        };
        "sudoku1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.array)
          ];
        };
        "sudoku2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.array)
            (hsPkgs.deepseq)
          ];
        };
        "sudoku3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.array)
          ];
        };
        "sudoku4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.array)
          ];
        };
        "sudoku5" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.array)
          ];
        };
        "strat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
          ];
        };
        "strat2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
          ];
        };
        "strat3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
          ];
        };
        "rsa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
          ];
        };
        "rsa1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
          ];
        };
        "rsa2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
          ];
        };
        "kmeans" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.time)
            (hsPkgs.deepseq)
            (hsPkgs.monad-par)
            (hsPkgs.binary)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
          ];
        };
        "GenSamples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.random)
            (hsPkgs.normaldistribution)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
          ];
        };
        "parmonad" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monad-par)
          ];
        };
        "rsa-pipeline" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.monad-par)
            (hsPkgs.deepseq)
          ];
        };
        "fwsparse" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.array)
            (hsPkgs.containers)
          ];
        };
        "fwsparse1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.monad-par)
            (hsPkgs.deepseq)
          ];
        };
        "timetable" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.random)
          ];
        };
        "timetable1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.monad-par)
            (hsPkgs.random)
          ];
        };
        "timetable2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.monad-par)
            (hsPkgs.random)
          ];
        };
        "timetable3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.monad-par)
            (hsPkgs.random)
          ];
        };
        "parinfer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.monad-par)
            (hsPkgs.array)
          ];
        };
        "fwdense" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
          ];
        };
        "fwdense1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
            (hsPkgs.transformers)
          ];
        };
        "rotateimage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.repa)
          ] ++ pkgs.lib.optional (flags.devil) (hsPkgs.repa-devil);
        };
        "fwaccel" = {
          depends  = [
            (hsPkgs.base)
          ] ++ pkgs.lib.optional (flags.accelerate) (hsPkgs.accelerate);
        };
        "fwaccel-gpu" = {
          depends  = ([
            (hsPkgs.base)
          ] ++ pkgs.lib.optional (flags.accelerate) (hsPkgs.accelerate)) ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda);
        };
        "mandel" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.fclabels)
          ] ++ pkgs.lib.optionals (flags.accelerate) [
            (hsPkgs.accelerate)
            (hsPkgs.accelerate-io)
          ]) ++ pkgs.lib.optional (flags.cuda) (hsPkgs.accelerate-cuda);
        };
        "fork" = {
          depends  = [ (hsPkgs.base) ];
        };
        "reminders" = {
          depends  = [ (hsPkgs.base) ];
        };
        "reminders2" = {
          depends  = [ (hsPkgs.base) ];
        };
        "mvar1" = {
          depends  = [ (hsPkgs.base) ];
        };
        "mvar2" = {
          depends  = [ (hsPkgs.base) ];
        };
        "mvar3" = {
          depends  = [ (hsPkgs.base) ];
        };
        "logger" = {
          depends  = [ (hsPkgs.base) ];
        };
        "phonebook" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
        "chan" = {
          depends  = [ (hsPkgs.base) ];
        };
        "chan2" = {
          depends  = [ (hsPkgs.base) ];
        };
        "geturls1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.bytestring)
          ];
        };
        "geturls2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "geturls3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "geturls4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "geturls5" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "geturls6" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "geturlscancel" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "geturlscancel2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "modifytwo" = {
          depends  = [ (hsPkgs.base) ];
        };
        "chan3" = {
          depends  = [ (hsPkgs.base) ];
        };
        "timeout" = {
          depends  = [ (hsPkgs.base) ];
        };
        "catch-mask" = {
          depends  = [ (hsPkgs.base) ];
        };
        "catch-mask2" = {
          depends  = [ (hsPkgs.base) ];
        };
        "windowman" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.stm)
          ];
        };
        "tmvar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
          ];
        };
        "geturlsfirst" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.HTTP)
            (hsPkgs.network)
          ];
        };
        "TChan" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
          ];
        };
        "TList" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
          ];
        };
        "TQueue" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
          ];
        };
        "TBQueue" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
          ];
        };
        "geturls7" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "geturls8" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "geturls9" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "timeout2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
          ];
        };
        "findseq" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
        "findpar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.async)
          ];
        };
        "findpar2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.async)
          ];
        };
        "findpar3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.async)
            (hsPkgs.stm)
          ];
        };
        "findpar4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.async)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.abstract-par)
            (hsPkgs.monad-par)
          ];
        };
        "server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.network)
          ];
        };
        "server2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.network)
          ];
        };
        "chat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.async)
            (hsPkgs.stm)
            (hsPkgs.network)
          ];
        };
        "ping" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.template-haskell)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "ping-multi" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.template-haskell)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "ping-tc" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.template-haskell)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "ping-tc-merge" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.template-haskell)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "ping-tc-notify" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.template-haskell)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "ping-fail" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.template-haskell)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "distrib-chat" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.transformers)
            (hsPkgs.template-haskell)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "distrib-chat-noslave" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.transformers)
            (hsPkgs.template-haskell)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "distrib-db" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (flags.distributed) [
            (hsPkgs.distributed-process)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-static)
          ];
        };
        "mvar4" = {
          depends  = [ (hsPkgs.base) ];
        };
        "deadlock1" = {
          depends  = [ (hsPkgs.base) ];
        };
        "deadlock2" = {
          depends  = [ (hsPkgs.base) ];
        };
        "threadperf1" = {
          depends  = [ (hsPkgs.base) ];
        };
        "threadperf2" = {
          depends  = [ (hsPkgs.base) ];
        };
        "bingtranslator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.utf8-string)
            (hsPkgs.xml)
          ];
        };
        "bingtranslatorconc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.utf8-string)
            (hsPkgs.xml)
          ];
        };
        "geturlsstm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ];
        };
        "Async" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }