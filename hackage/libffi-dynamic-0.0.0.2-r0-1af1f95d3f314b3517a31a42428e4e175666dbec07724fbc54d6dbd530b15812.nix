{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "libffi-dynamic"; version = "0.0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "/dev/null";
      url = "";
      synopsis = "LibFFI interface with dynamic bidirectional\ntype-driven binding generation";
      description = "LibFFI interface with support for importing and\nexporting function types inferred at compile time,\nconstructed at runtime, or a combination of both.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.hashable)
          (hsPkgs.intern)
          ];
        libs = [ (pkgs."ffi") ];
        };
      };
    }