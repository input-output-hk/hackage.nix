{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      static = false;
      profile = false;
      eventlog = false;
      development = false;
      no-executable = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ats-pkg";
        version = "2.10.2.0";
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
          (hsPkgs.mtl)
          (hsPkgs.dhall)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.shake-ats)
          (hsPkgs.shake-ext)
          (hsPkgs.composition-prelude)
          (hsPkgs.zip-archive)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.binary)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.dependency)
          (hsPkgs.filemanip)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        build-tools = [
          (hsPkgs.buildPackages.cpphs)
        ];
      };
      exes = {
        "atspkg" = {
          depends  = pkgs.lib.optionals (!flags.no-executable) [
            (hsPkgs.base)
            (hsPkgs.ats-pkg)
            (hsPkgs.optparse-applicative)
            (hsPkgs.shake-ats)
            (hsPkgs.microlens)
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