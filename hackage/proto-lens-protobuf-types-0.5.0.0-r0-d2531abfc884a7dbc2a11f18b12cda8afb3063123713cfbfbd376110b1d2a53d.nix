{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "proto-lens-protobuf-types"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Basic protocol buffer message types.";
      description = "This package provides bindings standard protocol message types, for use with the proto-lens library.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.proto-lens-setup or (pkgs.buildPackages.proto-lens-setup))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens-family)
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-runtime)
          (hsPkgs.text)
          ];
        };
      };
    }