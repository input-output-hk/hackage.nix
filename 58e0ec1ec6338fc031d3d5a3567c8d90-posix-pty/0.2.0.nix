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
        name = "posix-pty";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://bitbucket.org/merijnv/posix-pty";
      url = "";
      synopsis = "Pseudo terminal interaction with subprocesses.";
      description = "This package simplifies the creation of subprocesses that interact with\ntheir parent via a pseudo terminal (see @man pty@).";
      buildType = "Simple";
    };
    components = {
      "posix-pty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.unix)
        ];
        libs = pkgs.lib.optional (system.isLinux || system.isFreebsd) (pkgs."util");
      };
    };
  }