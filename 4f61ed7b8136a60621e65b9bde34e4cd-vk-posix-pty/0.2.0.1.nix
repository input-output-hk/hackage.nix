{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vk-posix-pty";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013 Merijn Verstraaten;\nCopyright © 2014 Vladimir Kirillov";
      maintainer = "Vladimir Kirillov <proger@hackndev.com>";
      author = "Merijn Verstraaten";
      homepage = "https://bitbucket.org/merijnv/posix-pty\nhttps://github.com/proger/posix-pty/tree/fork";
      url = "";
      synopsis = "Pseudo terminal interaction with subprocesses.";
      description = "This package simplifies the creation of subprocesses that interact with\ntheir parent via a pseudo terminal (see @man pty@).\nIncluded @ptywrap@ utility spawns a process with a @pty@, forwards its\noutput to stdout as plain text without buffering and forwards the exit code.\nNote that it __does not__ handle standard input.\n> ptywrap: usage: ptywrap [command to run]";
      buildType = "Simple";
    };
    components = {
      "vk-posix-pty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          (hsPkgs.process)
        ];
      };
      exes = {
        "ptywrap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.vk-posix-pty)
          ];
        };
      };
    };
  }