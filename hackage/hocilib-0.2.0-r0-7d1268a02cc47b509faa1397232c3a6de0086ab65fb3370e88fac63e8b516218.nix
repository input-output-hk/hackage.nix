{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hocilib";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Thierry Bourrillon\n(c) 2016 FPInsight, Eurl.";
      maintainer = "Thierry Bourrillon <thierry.bourrillon@fpinsight.com>";
      author = "Thierry Bourrillon <thierry.bourrillon@fpinsight.com>";
      homepage = "https://github.com/fpinsight/hocilib";
      url = "";
      synopsis = "FFI binding to OCILIB";
      description = "A low-level client library for the Oracle database, implemented as\nbindings to the C OCILIB API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.inline-c)
          (hsPkgs.template-haskell)
        ];
        libs = [ (pkgs."ocilib") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hocilib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
          libs = [ (pkgs."ocilib") ];
        };
      };
    };
  }