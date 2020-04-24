{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "zlib"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan.coutts@worc.ox.ac.uk>";
      author = "Duncan Coutts <duncan.coutts@worc.ox.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "Compression and decompression in the gzip and zlib formats";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fps" or ((hsPkgs.pkgs-errors).buildDepError "fps"))
          ];
        libs = [ (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z")) ];
        buildable = true;
        };
      };
    }