{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      allow-non-windows = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.12";
      identifier = {
        name = "windns";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Domain Name Service (DNS) lookup via the Windows dnsapi standard library";
      description = "This package implements an API for accessing\nthe [Domain Name Service (DNS)](https://tools.ietf.org/html/rfc1035)\nresolver service via the\nstandard [<windns.h>/dnsapi.dll](https://msdn.microsoft.com/en-us/library/windows/desktop/ms682100\\(v=vs.85\\).aspx)\nsystem library on Win32 systems.\n\nThis package provides the high-level API-subset of the [resolv](https://hackage.haskell.org/package/resolv) package.";
      buildType = "Simple";
    };
    components = {
      "windns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
        ] ++ pkgs.lib.optional (!(system.isWindows || _flags.allow-non-windows)) (hsPkgs.base);
        libs = [ (pkgs."dnsapi") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }