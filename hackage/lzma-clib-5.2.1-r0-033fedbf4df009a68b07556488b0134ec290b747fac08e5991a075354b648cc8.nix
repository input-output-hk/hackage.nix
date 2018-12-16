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
        name = "lzma-clib";
        version = "5.2.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Lasse Collin";
      homepage = "";
      url = "";
      synopsis = "liblzma C library and headers for use by LZMA bindings";
      description = "This package contains the @liblzma@ C library with headers for use\nby LZMA\\/XZ bindings such as </package/lzma lzma>.\n\nThe @liblzma@ code contained in this package version has been\nextracted from the <http://tukaani.org/xz/ XZ Utils> 5.2.1 release.\n\nNOTE: This package is only buildable on Windows.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = pkgs.lib.optional (!system.isWindows) (hsPkgs.only-buildable-on-windows);
      };
    };
  }