{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hpath";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "Julian Ospald 2016";
        maintainer = "Julian Ospald <hasufell@posteo.de>";
        author = "Julian Ospald <hasufell@posteo.de>";
        homepage = "";
        url = "";
        synopsis = "Support for well-typed paths";
        description = "Support for well-typed paths, utilizing ByteString under the hood.";
        buildType = "Simple";
      };
      components = {
        hpath = {
          depends  = [
            hsPkgs.base
            hsPkgs.IfElse
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.hspec
            hsPkgs.simple-sendfile
            hsPkgs.unix
            hsPkgs.unix-bytestring
            hsPkgs.utf8-string
            hsPkgs.word8
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.unbuildable;
        };
        tests = {
          doctests-hpath = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.doctest
              hsPkgs.hpath
            ] ++ pkgs.lib.optional system.isWindows hsPkgs.unbuildable;
          };
          doctests-posix = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.unix
              hsPkgs.hpath
              hsPkgs.doctest
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional system.isWindows hsPkgs.unbuildable;
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.IfElse
              hsPkgs.bytestring
              hsPkgs.hpath
              hsPkgs.hspec
              hsPkgs.process
              hsPkgs.unix
              hsPkgs.unix-bytestring
              hsPkgs.utf8-string
            ] ++ pkgs.lib.optional system.isWindows hsPkgs.unbuildable;
          };
        };
      };
    }