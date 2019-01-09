{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ivory-serialize"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "";
      url = "";
      synopsis = "Serialization library for Ivory.";
      description = "Used to automatically pack and unpack Ivory structures in big or little endian.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.filepath)
          (hsPkgs.monadLib)
          (hsPkgs.ivory)
          (hsPkgs.ivory-artifact)
          ];
        };
      };
    }