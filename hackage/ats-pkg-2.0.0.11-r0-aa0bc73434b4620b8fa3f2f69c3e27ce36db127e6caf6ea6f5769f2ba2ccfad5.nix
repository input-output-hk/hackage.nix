{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ats-pkg";
        version = "2.0.0.11";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/ats-pkg#readme";
      url = "";
      synopsis = "Package manager for ATS";
      description = "A collection of scripts to make building ATS projects easy.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.filemanip)
          (hsPkgs.bytestring)
          (hsPkgs.shake)
          (hsPkgs.tar)
          (hsPkgs.zlib)
          (hsPkgs.http-client-tls)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.parallel-io)
          (hsPkgs.unix)
          (hsPkgs.lens)
          (hsPkgs.dhall)
          (hsPkgs.shake-ats)
          (hsPkgs.shake-ext)
          (hsPkgs.composition-prelude)
          (hsPkgs.optparse-applicative)
          (hsPkgs.temporary)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "atspkg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ats-pkg)
          ];
        };
      };
    };
  }