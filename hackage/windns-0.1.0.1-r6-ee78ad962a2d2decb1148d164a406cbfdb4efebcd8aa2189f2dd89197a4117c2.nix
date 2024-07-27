{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { allow-non-windows = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "windns"; version = "0.1.0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "https://github.com/haskell-hvr/windns";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Domain Name Service (DNS) lookup via the <windns.h>/dnsapi.dll standard library";
      description = "This package implements an API for accessing\nthe [Domain Name Service (DNS)](https://tools.ietf.org/html/rfc1035)\nresolver service via the\nstandard [<windns.h>/dnsapi.dll](https://msdn.microsoft.com/en-us/library/windows/desktop/ms682100\\(v=vs.85\\).aspx)\nsystem library on Win32 systems.\n\nThis package provides the high-level API-subset of the [resolv](https://hackage.haskell.org/package/resolv) package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (!(system.isWindows || flags.allow-non-windows)) (hsPkgs."base" or (errorHandler.buildDepError "base"));
        libs = [ (pkgs."dnsapi" or (errorHandler.sysDepError "dnsapi")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }