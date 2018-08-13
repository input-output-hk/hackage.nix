{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      profile = false;
      eventlog = false;
      development = false;
      no-executable = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ats-pkg";
        version = "2.10.0.17";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/atspkg#readme";
      url = "";
      synopsis = "A build tool for ATS";
      description = "A collection of scripts to simplify building ATS projects.";
      buildType = "Custom";
    };
    components = {
      "ats-pkg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.bytestring)
          (hsPkgs.file-embed)
          (hsPkgs.shake)
          (hsPkgs.bzlib)
          (hsPkgs.Cabal)
          (hsPkgs.lzma)
          (hsPkgs.tar)
          (hsPkgs.zlib)
          (hsPkgs.http-client-tls)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.parallel-io)
          (hsPkgs.unix)
          (hsPkgs.mtl)
          (hsPkgs.dhall)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.shake-ats)
          (hsPkgs.shake-ext)
          (hsPkgs.composition-prelude)
          (hsPkgs.zip-archive)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.binary)
          (hsPkgs.lens)
          (hsPkgs.dependency)
          (hsPkgs.filemanip)
        ];
      };
      exes = {
        "atspkg" = {
          depends  = pkgs.lib.optionals (!_flags.no-executable) [
            (hsPkgs.base)
            (hsPkgs.ats-pkg)
            (hsPkgs.optparse-applicative)
            (hsPkgs.shake-ats)
            (hsPkgs.lens)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.composition-prelude)
            (hsPkgs.text)
            (hsPkgs.parallel-io)
            (hsPkgs.shake)
          ];
        };
      };
    };
  }