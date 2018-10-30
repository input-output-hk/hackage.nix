{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { embeded = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "geo-uk";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Marcin Tolysz, (c) Crown copyright, Ordnance Survey and the Ministry of Defence (MOD) 2002. All rights";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/geo-uk";
      url = "";
      synopsis = "High precision conversion between GPS and UK Grid";
      description = "Conversion between GPS and UKGrid Coordinates one approximate and one using table.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.file-embed)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.th-lift)
          (hsPkgs.template-haskell)
          (hsPkgs.geodetics)
        ] ++ pkgs.lib.optional (flags.embeded) (hsPkgs.bzlib);
      };
    };
  }