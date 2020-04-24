{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "v4l2"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/hsv4l2";
      url = "";
      synopsis = "interface to Video For Linux Two (V4L2)";
      description = "Higher-level interface to V4L2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."bindings-libv4l2" or ((hsPkgs.pkgs-errors).buildDepError "bindings-libv4l2"))
          (hsPkgs."bindings-linux-videodev2" or ((hsPkgs.pkgs-errors).buildDepError "bindings-linux-videodev2"))
          (hsPkgs."bindings-posix" or ((hsPkgs.pkgs-errors).buildDepError "bindings-posix"))
          (hsPkgs."ioctl" or ((hsPkgs.pkgs-errors).buildDepError "ioctl"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }