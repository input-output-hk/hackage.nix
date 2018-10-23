{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      profile = false;
      eventlog = false;
      development = false;
    };
    package = {
      specVersion = "2.0";
      identifier = {
        name = "ats-pkg";
        version = "3.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "A build tool for ATS";
      description = "A collection of scripts to simplify building ATS projects.";
      buildType = "Simple";
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
          (hsPkgs.process)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.parallel-io)
          (hsPkgs.mtl)
          (hsPkgs.dhall)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.shake-ats)
          (hsPkgs.shake-ext)
          (hsPkgs.shake-c)
          (hsPkgs.zip-archive)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.dependency)
          (hsPkgs.filemanip)
          (hsPkgs.quaalude)
        ];
      };
      sublibs = {
        "quaalude" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.microlens)
            (hsPkgs.dhall)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.shake)
            (hsPkgs.bytestring)
            (hsPkgs.composition-prelude)
            (hsPkgs.binary)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
          build-tools = [
            (hsPkgs.buildPackages.cpphs)
          ];
        };
      };
      exes = {
        "atspkg" = {
          depends  = [
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
            (hsPkgs.quaalude)
            (hsPkgs.dependency)
            (hsPkgs.bytestring)
            (hsPkgs.shake)
            (hsPkgs.cli-setup)
          ];
        };
      };
    };
  }