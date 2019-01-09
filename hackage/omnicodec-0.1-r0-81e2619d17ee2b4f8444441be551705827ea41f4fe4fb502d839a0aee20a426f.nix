{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "omnicodec"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Magnus Therning, 2007";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "data encoding and decoding command line utilities";
      description = "Two simply utilities built on dataenc";
      buildType = "Simple";
      };
    components = {
      exes = {
        "odec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dataenc)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell98)
            ];
          };
        "oenc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dataenc)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell98)
            ];
          };
        };
      };
    }