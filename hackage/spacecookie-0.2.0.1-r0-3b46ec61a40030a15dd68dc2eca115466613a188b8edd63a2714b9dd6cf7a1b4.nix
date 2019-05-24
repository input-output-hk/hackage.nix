{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "spacecookie"; version = "0.2.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "git@lukasepple.de";
      author = "Lukas Epple";
      homepage = "https://github.com/sternenseemann/spacecookie";
      url = "";
      synopsis = "gopher server daemon";
      description = "simple gopher server daemon";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.socket)
          (hsPkgs.unix)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.hxt-unicode)
          (hsPkgs.fast-logger)
          ];
        };
      exes = {
        "spacecookie" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.socket)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.spacecookie)
            ];
          };
        };
      };
    }