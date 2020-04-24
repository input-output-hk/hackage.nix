{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bytestring-in-base = true; };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "zlib"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2007 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan@haskell.org>";
      author = "Duncan Coutts <duncan@haskell.org>";
      homepage = "";
      url = "";
      synopsis = "Compression and decompression in the gzip and zlib formats";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.bytestring-in-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
        libs = (pkgs.lib).optional (!system.isWindows) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"));
        buildable = true;
        };
      };
    }