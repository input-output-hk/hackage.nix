{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "zlib"; version = "0.5.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2012 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>";
      author = "Duncan Coutts <duncan@community.haskell.org>";
      homepage = "";
      url = "";
      synopsis = "Compression and decompression in the gzip and zlib formats";
      description = "This package provides a pure interface for compressing and\ndecompressing streams of data represented as lazy\n'ByteString's. It uses the zlib C library so it has high\nperformance. It supports the \\\"zlib\\\", \\\"gzip\\\" and \\\"raw\\\"\ncompression formats.\n\nIt provides a convenient high level API suitable for most\ntasks and for the few cases where more control is needed it\nprovides access to the full zlib feature set.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (!system.isWindows) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"));
        buildable = true;
        };
      };
    }