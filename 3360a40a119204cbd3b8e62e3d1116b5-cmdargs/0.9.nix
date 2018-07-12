{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      testprog = true;
      quotation = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cmdargs";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2009-2011";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/cmdargs/";
        url = "";
        synopsis = "Command line argument processing";
        description = "This library provides an easy way to define command line parsers. Most users\nwill want to use the \"System.Console.CmdArgs.Implicit\" module, whose\ndocumentation contains an example.\n\n* \"System.Console.CmdArgs.Explicit\" provides a way to write command line\nparsers for both single mode programs (most programs) and multiple\nmode programs (e.g. darcs or cabal). Parsers are defined by constructing\na data structure.\n\n* \"System.Console.CmdArgs.Implicit\" provides a way to concisely define\ncommand line parsers, up to three times shorter than getopt. These parsers\nare translated into the Explicit data type.\n\n* \"System.Console.CmdArgs.GetOpt\" provides a wrapper allowing compatiblity\nwith existing getopt parsers, mapping to the Explicit data type.\n\nFor a general reference on what command line flags are commonly used,\nsee <http://www.faqs.org/docs/artu/ch10s05.html>.";
        buildType = "Simple";
      };
      components = {
        "cmdargs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.process
          ] ++ pkgs.lib.optional _flags.quotation hsPkgs.template-haskell;
        };
        exes = { "cmdargs" = {}; };
      };
    }