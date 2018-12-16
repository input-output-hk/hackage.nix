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
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/ats-pkg#readme";
      url = "";
      synopsis = "Package manager for ATS";
      description = "A collection of scripts to make building ATS projects easy.";
      buildType = "Simple";
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
          (hsPkgs.dhall)
          (hsPkgs.shake-ext)
          (hsPkgs.composition-prelude)
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