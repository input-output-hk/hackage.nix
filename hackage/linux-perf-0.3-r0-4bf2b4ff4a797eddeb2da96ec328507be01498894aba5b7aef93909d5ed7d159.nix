{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linux-perf"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bernie Pope <florbitous@gmail.com>";
      author = "Simon Marlow, Bernie Pope, Mikolaj Konarski, Duncan Coutts";
      homepage = "https://github.com/bjpop/haskell-linux-perf";
      url = "";
      synopsis = "Read files generated by perf on Linux";
      description = "This library is for parsing, representing in Haskell and pretty printing\nthe data file output of the Linux @perf@ command.\nThe @perf@ command provides performance profiling information for\napplications running under the Linux operating system. This information\nincludes hardware performance counters and kernel tracepoints.\n\nModern CPUs can provide information about the runtime behaviour\nof software through so-called hardware performance counters\n<http://en.wikipedia.org/wiki/Hardware_performance_counter>.\nRecent versions of\nthe Linux kernel (since 2.6.31) provide a generic interface\nto low-level events for running processes.\nThis includes access to hardware counters but also a wide array\nof software events such as page faults,\nscheduling activity and system calls. A userspace tool called 'perf'\nis built on top of the kernel interface,\nwhich provides a convenient way to record and view events\nfor running processes.\n\nThe @perf@ tool has many sub-commands which do a variety of things,\nbut in general it has two main purposes:\n\n1. Recording events.\n\n2. Displaying events.\n\nThe @perf record@ command records information about performance\nevents in a file called (by default) @perf.data@.\nIt is a binary file format which is basically a memory dump\nof the data structures used to record event information.\nThe file has two main parts:\n\n1. A header which describes the layout of information\nin the file (section sizes, etcetera) and common information\nabout events in the second part of the file (an encoding\nof event types and their names).\n\n2. The payload of the file which is a sequence of event records.\n\nEach event field has a header which says what general type of event it is\nplus information about the size of its body.\n\nThere are nine types of event:\n\n1. @PERF_RECORD_MMAP@: memory map event.\n\n2. @PERF_RECORD_LOST@: an unknown event.\n\n3. @PERF_RECORD_COMM@: maps a command name string to a process\nand thread ID.\n\n4. @PERF_RECORD_EXIT@: process exit.\n\n5. @PERF_RECORD_THROTTLE@:\n\n6. @PERF_RECORD_UNTHROTTLE@:\n\n7. @PERF_RECORD_FORK@: process creation.\n\n8. @PERF_RECORD_READ@:\n\n9. @PERF_RECORD_SAMPLE@: a sample of an actual hardware counter\nor a software event.\n\nThe @PERF_RECORD_SAMPLE@ events (samples) are the most interesting\nones in terms of program profiling. The other events\nseem to be mostly useful for keeping track of process technicalities.\nSamples are timestamped with an unsigned 64 bit\nword, which records elapsed nanoseconds since some point in time\n(system running time, based on the kernel scheduler clock).\nSamples have themselves a type which is defined\nin the file header and linked to the sample by an integer identifier.\n\nBelow is an example program which reads a @perf.data@ file and prints out\nthe number of events that it contains.\n\n>module Main where\n>\n>import Profiling.Linux.Perf (readPerfData)\n>import Profiling.Linux.Perf.Types (PerfData (..))\n>import System.Environment (getArgs)\n>\n>main :: IO ()\n>main = do\n>   args <- getArgs\n>   case args of\n>      [] -> return ()\n>      (file:_) -> do\n>         perfData <- readPerfData file\n>         print $ length $ perfData_events perfData";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "dump-perf" = {
          depends = [
            (hsPkgs."linux-perf" or (errorHandler.buildDepError "linux-perf"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "ghc-events-perf-record" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "ghc-events-perf-sync" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "ghc-events-perf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
        "count-events" = {
          depends = [
            (hsPkgs."linux-perf" or (errorHandler.buildDepError "linux-perf"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }